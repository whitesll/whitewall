require 'rails_helper'

describe VideosController do

  describe 'GET #show' do
    it "インスタンス変数は期待した値になるか？" do
      user = create(:user)
      video = create(:video)
      sign_in user
      get :show, params: {  id: video }
      expect(assigns(:video)).to eq video
    end

    it "掲示板詳細ページに遷移するか？" do
      user = create(:user)
      video = create(:video)
      sign_in user
      get :show, params: {  id: video }
      expect(response).to render_template :show
    end
   
  end

  describe 'GET #index' do
    it "インスタンス変数は期待した値になるか？" do
      user = create(:user)
      videos = create_list(:video, 3)
      sign_in user
      get :index
      expect(assigns(:videos)).to match(videos.sort{|a, b| b.created_at <=> a.created_at })
    end

    it "掲示板一覧ページに遷移するか？" do
      user = create(:user)
      sign_in user
      get :index
      expect(response).to render_template :index
    end
  end

end