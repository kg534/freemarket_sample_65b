class TransactionsController < ApplicationController
  require 'payjp'
  before_action :set_card

  def index
    @product = Product.find(params[:product_id])
  end

  def done
    
  end

  def pay
    @product = Product.find(params[:product_id])
    price = @product.price.to_i
    # すでに購入されていないか？
    # if transactions.user_id.present?
    #   redirect_back(fallback_location: root_path)
    if @card.blank?
      #登録されていない場合にカード登録画面に移動
      redirect_to new_mypages_user_card_path(current_user.id)
      flash[:alert] = "購入にはクレジットカード登録が必要です"
    elsif price >= 0 && price <= 50
      redirect_to controller: 'products', action: 'show', id: @product.id 
      flash[:alert] = "この商品は購入できません"
    else
      # 購入されていない&クレジットカードもある（決済処理）
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      #請求発行
      Payjp::Charge.create(
        amount: @product.price,
        customer: @card.payjp_id,
        currency: 'jpy',
      )
      # 売り切れのため、product情報を「売り切れ」状態にする
      if Transaction.update(user_id: current_user.id)
        flash[:notice] = "購入しました"
        redirect_to done_product_transactions_path
      else
        flash[:alert] = "購入に失敗しました"
        redirect_to controller: 'products', action: 'show', id: @product.id
      end
    end
  end

  def set_card
    @card = Card.find_by(user_id: current_user.id)
  end

end
