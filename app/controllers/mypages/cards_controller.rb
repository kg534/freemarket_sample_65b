class Mypages::CardsController < ApplicationController
  require "payjp"
  before_action :set_card

  def index
    # すでにカードが登録しているか？
    if @card.present?
      # 登録している場合は、Pay.jpからカード情報を取得する
      # Pay.jpの秘密鍵をセットする。
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      # Pay.jpから顧客情報を取得する
      customer = Payjp::Customer.retrieve(@card.payjp_id)
      # Pay.jpの顧客情報から、デフォルトで使うクレジットカードを取得する。
      @card_info = customer.cards.retrieve(customer.default_card)
      # クレジットカード情報から表示させたい情報を定義する
      # クレジットカードの画像を表示させるために、カード情報を取得
      @card_brand = @card_info.brand
      # クレジットカードの有効期限を取得
      @exp_month = @card_info.exp_month.to_s
      @exp_year = @card_info.exp_year.to_s.slice(2,3)

      #クレジットカード会社を取得したので、カード会社の画像viewに表示させるファイルを作る。
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

  def new
    #すでに登録済みの場合はindexアクションに戻す
      @card = Card.where(user_id: current_user.id).first.present?
      redirect_to action: "index" if @card.present?
  end

  def create
    # Pay.jpの秘密鍵をセット
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    #jsで作成したpayjpTokenが入っているか？
    if params['payjpToken'].blank?
      # トークンが空なら戻る
      render "new"
    else
      # トークンがあれば、Pay.jpに登録されるユーザーを作成する（カード情報と顧客情報を結びつける）
      customer= Payjp::Customer.create(
        description: 'test',
        email: current_user.email,
        card: params['payjpToken'],
        metadata: {user_id: current_user.id}
      )
      # Payjpに登録できたので、cardモデルに登録する
      @card = Card.new(user_id: current_user.id, payjp_id: customer.id, token_id: params[:payjpToken])
      if @card.save
        if request.referer&.include?("/registrations/step5")
          redirect_to controller: 'registrations', action: "step6"
        else
        redirect_to action: "index"
        flash[:notice] = "支払い情報の登録が完了しました"
        end
      else
        flash[:alert] = "クレジットカードの登録に失敗しました"
        redirect_to action:'new'
      end
    end
  end

  def destroy
    # クレジットカードと顧客情報を削除する
    # Pay.jpの秘密鍵をセットして、Pay.jpから取得する。
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    # Pay.jpの顧客情報を取得
    customer = Payjp::Customer.retrieve(@card.payjp_id)
    # Pay.jpの顧客情報を削除
    customer.delete
    # App上でもクレジットカードを削除
    if @card.destroy
      redirect_to action: "index"
      flash[:notice] = "支払い情報を削除しました"
    else
      flash[:alert] = "削除できませんでした"
      render "index"
    end
  end


  private
  def set_card
    @card = Card.find_by(user_id: current_user.id) if Card.where(user_id: current_user.id).present?
  end
end
