require 'rails_helper'

describe Card, type: :model do
  describe 'Post #create' do
    context "createアクションにアクセスした時" do
      it 'user_idが空 NG' do
      card = FactoryBot.build(:card, user_id: nil)
      card.valid?
      expect(card.errors[:user_id]).to include("を入力してください")
      end

      it 'payjp_idが空 NG' do
        card = FactoryBot.build(:card, payjp_id: nil)
        card.valid?
        expect(card.errors[:payjp_id]).to include("を入力してください")
      end
      

      it 'token_idが空 NG' do
        card = FactoryBot.build(:card, token_id: nil)
        card.valid?
        expect(card.errors[:token_id]).to include("を入力してください")
      end
    end
  end
end