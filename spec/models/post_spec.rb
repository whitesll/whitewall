require 'rails_helper'

RSpec.describe Post, type: :model do
  describe '#create' do
    context '掲示板を新規作成できる場合' do
      it 'タイトルとgame_idがあれば新規作成できること' do
        expect(create(:post)).to be_valid
      end
    end

    context '掲示板を新規作成できない場合' do
      it 'タイトルもgame_idも無いと新規作成できないこと' do
        post = build(:post, title: nil, game_id: nil)
        post.valid?
        expect(post.errors[:title]).to include("can't be blank")
      end

    end
  end
end