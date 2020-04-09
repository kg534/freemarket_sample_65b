class Mypages::CardsController < ApplicationController
  def index

  end

  def new
    @user = User.find(params[:user_id])
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to root_path
    else
      render :index
    end
  end

  private
  def card_params
    params.permit(:card_number, :year, :month, :security_code).merge(user_id: current_user.id)
  end
end
