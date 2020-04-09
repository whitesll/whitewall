require 'rails_helper'

describe PostsController do

  describe 'GET #new' do
    it "掲示板作成ページに遷移するか？" do
      user = create(:user)
      sign_in user
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'GET #show' do
    it "インスタンス変数は期待した値になるか？" do
      user = create(:user)
      post = create(:post)
      sign_in user
      get :show, params: {  id: post }
      expect(assigns(:post)).to eq post
    end

    it "掲示板詳細ページに遷移するか？" do
      user = create(:user)
      post = create(:post)
      sign_in user
      get :show, params: {  id: post }
      expect(response).to render_template :show
    end
   
  end

  describe 'GET #index' do
    it "インスタンス変数は期待した値になるか？" do
      user = create(:user)
      posts = create_list(:post, 3)
      sign_in user
      get :index
      expect(assigns(:posts)).to match(posts.sort{|a, b| b.created_at <=> a.created_at })
    end

    it "掲示板一覧ページに遷移するか？" do
      user = create(:user)
      sign_in user
      get :index
      expect(response).to render_template :index
    end
  end

end