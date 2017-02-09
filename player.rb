class Player
  attr_accessor :name, :points, :stage

  POINTS = [0,15,30,40]

  def initialize(name, points, stage)
    @name = name
    @points = points
    @stage = stage
  end

  # Gets next point of winning player
  def next_point
    POINTS[POINTS.index(self.points)+1]
  end
end