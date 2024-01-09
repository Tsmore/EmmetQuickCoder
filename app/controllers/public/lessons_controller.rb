class Public::LessonsController < ApplicationController
  def show
  end

  def index
  end

  def beginner
    @lessons = Lesson.where(difficulty: :beginner)
  end

  def intermediate
    @lessons = Lesson.where(difficulty: :intermediate)
  end

  def advanced
    @lessons = Lesson.where(difficulty: :advanced)
  end

end
