class MaintopController < ApplicationController
  def index
    @lists = Product.where(status:0).includes(:images).limit(6).order('id DESC')
  end
end
