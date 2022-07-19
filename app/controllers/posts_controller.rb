class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  # コメントアウトする
  # def new
  # end

 def create
  Post.create(content: params[:content])
  redirect_to action: :index  # 追記する
end

end
