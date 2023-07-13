class PostImagesController < ApplicationController
before_action :set_q_for_post_image

  def set_q_for_post_image
    @q_header = PostImage.ransack(params[:q])
  end

  def new
    @post_image = PostImage.new
  end

  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    if @post_image.save
      redirect_to post_images_path
    else
      render :new
    end
  end

  def index
    @post_images = PostImage.all
    if @q_header
      @post_images = @q_header.result(distinct: true)
    end
  end

  def show
    @post_image = PostImage.find(params[:id])
    @post_comment = PostComment.new
    @post_comments = PostComment.all
  end

  def destroy
    @post_image = PostImage.find(params[:id])
    @post_image.destroy
    redirect_to post_images_path
  end

  private

  def post_image_params
    params.require(:post_image).permit(:image, :spot_name, :island_name, :caption, :star)
  end
end
