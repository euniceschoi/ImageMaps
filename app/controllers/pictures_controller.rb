class PicturesController < ApplicationController
include Magick

  def index
    @pictures= Picture.all
    @picture = Magick::Image.read(Picture.first.image_url)
  end

  def new
  end

  def create
    # @picture = Picture.new(picture_params)
    # picture = Magick::Image.read(@picture.picture_url).first
    # @picture.width = picture.columns
    # @picture.height = picture.rows

    # if @picture.save
    #   redirect_to picture_path
    # end
  end

  def show
    # @picture = picture.find()
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def picture_params
    params.require(:picture).permit(
      :title,
      :picture_url)
  end
end
