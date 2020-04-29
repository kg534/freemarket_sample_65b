require 'rails_helper'

describe Mypages::CardsController, type: :controller do
  describe 'Post #create' do
    context "createアクションにアクセスした時" do
      before do
        login user
        payjp_customer = double("Payjp::Customer")
        payjp_list = double("Payjp::ListObject")
        payjp_card = double("Payjp::Card")
        allow(Payjp::Customer).to receive(:create).and_return(payjp_customer)        
        allow(payjp_customer).to receive(:cards).and_return(payjp_list)        
        allow(payjp_list).to receive(:create).and_return(payjp_card) 
        allow(payjp_customer).to receive(:id).and_return('cus_2354d04ca16c0d2c555f5625d834')
      end
      let(:user) {FactoryBot.create(:user)}
      it "@cardが定義されていること" do
        post :create, params: {payjpToken: 'tok_9d667e8dcb4e70d8aa18457c2366', user_id: user.id}
        card = Card.create({user_id: user.id, payjp_id: 'cus_2354d04ca16c0d2c555f5625d834', token_id: 'tok_9d667e8dcb4e70d8aa18457c2366'})
        expect(assigns(:card).payjp_id).to eq (card.payjp_id)
      end

      it "indexに遷移" do
        post :create, params: {payjpToken:  'tok_9d667e8dcb4e70d8aa18457c2366', user_id: user.id}
        card = Card.create({user_id: user.id, payjp_id: 'cus_2354d04ca16c0d2c555f5625d834', token_id: 'tok_9d667e8dcb4e70d8aa18457c2366'})
        expect(response). to redirect_to(mypages_user_cards_path)
      end

      it "newに遷移" do
        post :create, params: {user_id: user.id}
        card = Card.create({user_id: user.id, payjp_id: 'cus_2354d04ca16c0d2c555f5625d834', token_id: 'tok_9d667e8dcb4e70d8aa18457c2366'})
        expect(@resopnse). to render_template :new
      end
    end
  end
end

describe Mypages::CardsController, type: :controller do
  describe 'Delete #destroy' do
    context "destroyアクションにアクセスした時" do
      before do
        login user
        payjp_customer = double("Payjp::Customer")
        payjp_list = double("Payjp::ListObject")
        payjp_card = double("Payjp::Card")
        allow(Payjp::Customer).to receive(:create).and_return(payjp_customer)  
        allow(payjp_customer).to receive(:cards).and_return(payjp_list)        
        allow(payjp_list).to receive(:create).and_return(payjp_card)
        allow(payjp_customer).to receive(:id).and_return('cus_dd1457ed99e96a8528f93e556c44')
        allow(Payjp::Customer).to receive(:retrieve).and_return(payjp_customer)
        allow(payjp_customer).to receive(:delete).and_return(payjp_customer)      
      end
      let(:user) {FactoryBot.create(:user)}
      it '@cardが削除されること' do
        post :create, params: {payjpToken: 'tok_9d667e8dcb4e70d8aa18457c2366', user_id: user.id}
        delete :destroy, params: {user_id: user.id, id: user.card.id}
        expect{user.card.delete}.to change{ Card.count }.by(0)
      end
      it 'destroy後indexに遷移' do
        post :create, params: {payjpToken: 'tok_9d667e8dcb4e70d8aa18457c2366', user_id: user.id}
        delete :destroy, params: {user_id: user.id, id: user.card.id}
        user.card.delete
        expect(response).to redirect_to(mypages_user_cards_path)
      end
    end
  end
end