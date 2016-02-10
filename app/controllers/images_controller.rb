
class ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def new
  end

  def create
    @image = Image.new(image_params)
    image = Magick::Image.read(@image.image_url).first
    @image.width = image.columns
    @image.height = image.rows

    if @image.save
      redirect_to image_path
    end
  end

  def show
    # @image = Image.find()
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def image_params
    params.require(:image).permit(
      :title,
      :image_url)
  end

end
