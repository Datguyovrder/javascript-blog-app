class Api::PostsController < ApplicationController
  def index
    @posts = Post.all
    render 'index.json.jbuilder'
  end

  def create
    post = Post.new(
      title: params[:title],
      body: params[:body]
    )

    if post.save
      render json: {message: 'post created successfully'}, status: :created
    else
      render json: {errors: post.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @post = Post.find(params[:id])
    render 'show.json.jbuilder'
  end
end
