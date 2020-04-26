require 'rails_helper'

describe Mypages::CardsController, type: :controller do
  describe 'Post #create' do
    context "createアクションにアクセスした時" do
      before do
        payjp_customer = double("Payjp::Customer")
        payjp_list = double("Payjp::ListObject")
        payjp_card = double("Payjp::Card")
        allow(Payjp::Customer).to receive(:create).and_return(payjp_customer)        
        allow(payjp_customer).to receive(:cards).and_return(payjp_list)        
        allow(payjp_list).to receive(:create).and_return(payjp_card) 
        allow(payjp_customer).to receive(:id).and_return("cus_80a80753053635222ef70ec07b64")
      end
      let(:user) {FactoryBot.create(:user)}
      let(:params) { {user_id: 1, token_id: "tok_ae8c9cb10347fe204f08ae20dc4d"} }
      it "@cardが定義されていること" do
        post :create, params
        card = create(:card, user_id: user.id, customer_id: "cus_80a80753053635222ef70ec07b64")
        expect(assigns(:card).customer_id).to eq(card.customer_id)
      end

      it "indexに遷移" do
        post :create, params
        card = create(:card, user_id: user.id, customer_id: "cus_80a80753053635222ef70ec07b64")
        expect(response).to render_template :index 
      end

      it "newに遷移" do
        post :create, params
        expect(resopnse). to render_tamplate :new
      end
    end
  end
end