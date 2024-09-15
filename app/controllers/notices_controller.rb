class NoticesController < ApplicationController
  def new
    @notice = Notice.new
  end

  def create
    @notice = Notice.new(notice_params)
    @notice.user_id = current_user.id
    @notice.save
    redirect_to notices_path
  end

  def index
    @notices = Notice.all
  end

  def show
    @notice = Notice.find(params[:id])
  end
  
  def edit
    @notice = Notice.find(params[:id])
  end

  def update
    @notice = Notice.find(params[:id])
    if @notice.update(notice_params)
      flash[:notice] = "You have updated book successfully."
      redirect_to notice_path(@notice.id)
    else
      render :edit
    end
  end

  def destroy
    notice = Notice.find(params[:id])
    notice.destroy
    redirect_to notices_path
  end

  private

  def notice_params
    params.require(:notice).permit(:title, :body, :image)
  end

end
