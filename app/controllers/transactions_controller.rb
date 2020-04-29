class TransactionsController < ApplicationController
  require 'payjp'
  before_action :set_card, :set_product

  def index
    if @card.present?
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(@card.payjp_id)
      # Pay.jpの顧客情報から、デフォルトで使うクレジットカードを取得する。
      @card_info = customer.cards.retrieve(customer.default_card)
      # クレジットカード情報から表示させたい情報を定義する
      # クレジットカードの画像を表示させるために、カード情報を取得
      @card_brand = @card_info.brand
      # クレジットカードの有効期限を取得
      @exp_month = @card_info.exp_month.to_s
      @exp_year = @card_info.exp_year.to_s.slice(2,3)

      case @card_brand
      when "Visa"
        @card_image = "logo_visa.gif"
      when "JCB"
        @card_image = "jcb-logomark-img-02.gif"
      when "MasterCard"
        @card_image = "mc_vrt_pos.svg"
      when "American Express"
        @card_image = "amex-logomark-img-05.gif"
      when "Diners Club"
        @card_image = "diners-logomark-img-02.gif"
      when "Discover"
        @card_image = "discover-logomark-img-07.gif"
      end
    end
  end

  def done
    if @card.present?
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(@card.payjp_id)
      # Pay.jpの顧客情報から、デフォルトで使うクレジットカードを取得する。
      @card_info = customer.cards.retrieve(customer.default_card)
      # クレジットカード情報から表示させたい情報を定義する
      # クレジットカードの画像を表示させるために、カード情報を取得
      @card_brand = @card_info.brand
      # クレジットカードの有効期限を取得
      @exp_month = @card_info.exp_month.to_s
      @exp_year = @card_info.exp_year.to_s.slice(2,3)

      case @card_brand
      when "Visa"
        @card_image = "logo_visa.gif"
      when "JCB"
        @card_image = "jcb-logomark-img-02.gif"
      when "MasterCard"
        @card_image = "mc_vrt_pos.svg"
      when "American Express"
        @card_image = "amex-logomark-img-05.gif"
      when "Diners Club"
        @card_image = "diners-logomark-img-02.gif"
      when "Discover"
        @card_image = "discover-logomark-img-07.gif"
      end
    end
  end

  def pay
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
      if Transaction.create(user_id: current_user.id, product_id: @product.id)
        @product.update_attribute(:status, 2)
        redirect_to done_product_transactions_path
      else
        flash[:alert] = "購入に失敗しました"
        redirect_to controller: 'products', action: 'show', id: @product.id
      end
    end
  end

  private
  def set_card
    @card = Card.find_by(user_id: current_user.id)
  end

  def set_product
    @product = Product.find(params[:product_id])
end
