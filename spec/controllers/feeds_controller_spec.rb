require 'rails_helper'

RSpec.describe FeedsController, type: :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all feeds as @feeds" do
      feed = Feed.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:feeds)).to eq([feed])
    end
  end

  describe "GET #show" do
    it "assigns the requested feed as @feed" do
      feed = Feed.create! valid_attributes
      get :show, params: {id: feed.to_param}, session: valid_session
      expect(assigns(:feed)).to eq(feed)
    end
  end

  describe "GET #new" do
    it "assigns a new feed as @feed" do
      get :new, params: {}, session: valid_session
      expect(assigns(:feed)).to be_a_new(Feed)
    end
  end

  describe "GET #edit" do
    it "assigns the requested feed as @feed" do
      feed = Feed.create! valid_attributes
      get :edit, params: {id: feed.to_param}, session: valid_session
      expect(assigns(:feed)).to eq(feed)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Feed" do
        expect {
          post :create, params: {feed: valid_attributes}, session: valid_session
        }.to change(Feed, :count).by(1)
      end

      it "assigns a newly created feed as @feed" do
        post :create, params: {feed: valid_attributes}, session: valid_session
        expect(assigns(:feed)).to be_a(Feed)
        expect(assigns(:feed)).to be_persisted
      end

      it "redirects to the created feed" do
        post :create, params: {feed: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Feed.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved feed as @feed" do
        post :create, params: {feed: invalid_attributes}, session: valid_session
        expect(assigns(:feed)).to be_a_new(Feed)
      end

      it "re-renders the 'new' template" do
        post :create, params: {feed: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested feed" do
        feed = Feed.create! valid_attributes
        put :update, params: {id: feed.to_param, feed: new_attributes}, session: valid_session
        feed.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested feed as @feed" do
        feed = Feed.create! valid_attributes
        put :update, params: {id: feed.to_param, feed: valid_attributes}, session: valid_session
        expect(assigns(:feed)).to eq(feed)
      end

      it "redirects to the feed" do
        feed = Feed.create! valid_attributes
        put :update, params: {id: feed.to_param, feed: valid_attributes}, session: valid_session
        expect(response).to redirect_to(feed)
      end
    end

    context "with invalid params" do
      it "assigns the feed as @feed" do
        feed = Feed.create! valid_attributes
        put :update, params: {id: feed.to_param, feed: invalid_attributes}, session: valid_session
        expect(assigns(:feed)).to eq(feed)
      end

      it "re-renders the 'edit' template" do
        feed = Feed.create! valid_attributes
        put :update, params: {id: feed.to_param, feed: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested feed" do
      feed = Feed.create! valid_attributes
      expect {
        delete :destroy, params: {id: feed.to_param}, session: valid_session
      }.to change(Feed, :count).by(-1)
    end

    it "redirects to the feeds list" do
      feed = Feed.create! valid_attributes
      delete :destroy, params: {id: feed.to_param}, session: valid_session
      expect(response).to redirect_to(feeds_url)
    end
  end

end
