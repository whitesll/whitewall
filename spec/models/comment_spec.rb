require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe '#create' do
    context 'コメントを保存できる場合' do
      it 'コメントがあれば保存できること' do
        expect(build(:comment, image: nil)).to be_valid
      end

      it '画像があれば保存できること' do
        expect(build(:comment, comment: nil)).to be_valid
      end

      it 'コメントと画像があれば保存できること' do
        expect(build(:comment)).to be_valid
      end
    end

    context 'コメントを保存できない場合' do
      it 'コメントも画像も無いと保存できないこと' do
        comment = build(:comment, comment: nil, image: nil)
        comment.valid?
        expect(comment.errors[:comment]).to include("can't be blank")
      end

      it 'post_idが無いと保存できないこと' do
        comment = build(:comment, post_id: nil)
        comment.valid?
        expect(comment.errors[:post]).to include("must exist")
      end

      it 'user_idが無いと保存できないこと' do
        comment = build(:comment, user_id: nil)
        comment.valid?
        expect(comment.errors[:user]).to include("must exist")
      end
    end
  end
end