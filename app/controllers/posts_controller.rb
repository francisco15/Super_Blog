class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :private_access, except: [:index, :show]

  def index
    @posts = Post.all.order(created_at: :desc)
  end

end
