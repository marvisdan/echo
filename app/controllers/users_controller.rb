class UsersController < Application::base
  def new
    @user = User.new
  end

  def create
    @user = User.create(post_params)
    respond_to do |format|
      format.html {redirect_to @user}
    end
  end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html {redirect_to @user}
  end


end