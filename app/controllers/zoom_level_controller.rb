class ZoomLevelController < ApplicationController
  include Magick
  def index
    @zoom_levels = ZoomLevel.all
    @zoom_level_hash = Hash.new()
    @zoom_levels.each do |zoom_level|
      @zoom_level_hash[zoom_level.level] = {rows:zoom_level.rows, cols: zoom_level.columns}
    end
  end

  def new

  end

  def create

  end

  def show
    picture = Magick::Image.read(Picture.first.picture_url).first
    width = picture.columns
    height = picture.rows
      x = (width/4).to_f
      y = (height/4).to_f
      zero = 0
      if params[:id].to_i == 1
        @coordinates =
          [
            [0, 0, 2 * x, 2 * y],
            [2 * x, 0, 4 * x, 2 * y],
            [0, 2 * y, 2 * x, 4 * y],
            [2 * x, 2 * y, 4 * x, 4 * y]
          ]
      elsif params[:id].to_i == 2
        @coordinates =
          [
            [0, 0, x, y],
            [x, 0, 2 * x, y],
            [2 * x, 0, 3 * x, y],
            [3 * x, 0, 4 * x, y],
            [0, y, x, 2 * y],
            [x, y, 2 * x, 2 * y],
            [2 * x, y, 3 * x, 2 * y],
            [3 * x, y, 4 * x, 2 * y],
            [0, 2 * y, x, 3 * y],
            [x, 2 * y, 2 * x, 3 * y],
            [2 * x, 2 * y, 3 * x, 3 * y],
            [3 * x, 2 * y, 4 * x, 3 * y],
            [0, 3 * y, x, 4 * y],
            [x, 3 * y, 2 * x, 4 * y],
            [2 * x, 3 * y, 3 * x, 4 * y],
            [3 * x, 3 * y, 4 * x, 4 * y]

          ]
      end
    # @zoom_level = ZoomLevel.find(params[:id])
    # @zoom_level.picture_url = Picture.first.picture_url
    # @img = Magick::Image.read(Picture.first.picture_url)[0]
    # @img_width = @img.columns
    # @img_height = @img.rows
    # gc = Magick::Draw.new
    # gc.stroke('red')
    # gc.line(@img_width/2,0,@img_width/2,@img_height)
    # gc.draw(@img)
    # gc.write('@zoom_level.picture_url')
  end
end
