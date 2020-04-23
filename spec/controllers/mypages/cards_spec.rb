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
        allow(payjp_customer).to receive(:id).and_return("cus_121673955bd7aa144de5a8f6c262")
      end
      let(:user) {FactoryBot.create(:user)}
      it "@cardが定義されていること" do
        post :create, params: {token: "whook_ea14320cac08584e44175c1126"}
        card = create(:card, user_id: user.id, customer_id: "cus_121673955bd7aa144de5a8f6c262")
        expect(assigns(:card).customer_id).to eq(card.customer_id)
      end
    end
  end
end