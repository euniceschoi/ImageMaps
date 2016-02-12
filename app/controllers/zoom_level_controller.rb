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
