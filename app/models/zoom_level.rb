class ZoomLevel < ActiveRecord::Base

  def self.solve_coordinates(zoom_level,width,height)
  x = (width/4).to_f
  y = (height/4).to_f
  zero = 0
  if zoom_level == 1
    coordinates =
      [
        [0, 0, 2 * x, 2 * y],
        [2 * x, 0, 4 * x, 2 * y],
        [0, 2 * y, 2 * x, 4 * y],
        [2 * x, 2 * y, 4 * x, 4 * y]
      ]
  elsif zoom_level == 2
    coordinates =
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
    return coordinates
  end

end
