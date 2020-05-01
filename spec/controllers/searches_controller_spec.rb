require 'rails_helper'

describe Products::SearchesController, type: :controller do
  describe 'GET #index' do
    let(:image) {FactoryBot.create(:image)}
    it '@productsに正しい値が入っていること' do
      get :index
      products = FactoryBot.create_list(:product, 6)
      expect(assigns(:products)).to match(products.sort{ |a, b| b.created_at <=> a.created_at })
    end

    it 'index.html.hamlに遷移すること' do
      get :index
      expect(response).to render_template :index
    end
  end
end 