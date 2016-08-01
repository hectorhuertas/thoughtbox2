class ThoughtsController < ApplicationController
  def new
    @thought = Thought.new
  end

  def create
    @thought = Thought.new(thought_params)

    if current_user.thoughts << @thought
      redirect_to root_path
    else
      render :new
    end
  end

  private

    def thought_params
      params.require(:thought).permit(:title, :description)
    end
end
