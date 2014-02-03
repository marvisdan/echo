class PostsController < ActionController::Base
  before_filter :get_post, :only => [:edit,:update,:destroy]
  before_filter :check_auth, :only => [:edit, :update, :destroy]

  def get_post
    @tweet = Tweet.find(params[:id])
  end

  def check_auth
      if session[:user_id] != @post.user_id
        redirect_to(posts_path, :notice => "Désolé vous ne pouvez pas éditer le post d'un autre utilisateur")
      end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create
  end

  def edit
  end

  def index
  end


  def show
  end

  def update
    @post.update_attributes(post_params)
    Post.save
  end

  def destroy
    Post.destroy
    respond_to do |format|
      format.html{redirect_to posts_path}
    end
  end

end