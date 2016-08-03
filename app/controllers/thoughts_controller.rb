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

  def edit
    @thought = Thought.find_by(id: params[:id])
  end

  def update
    @thought = Thought.update(params[:id], thought_params)

    if @thought.valid?
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    Thought.find_by(id: params[:id]).destroy
    redirect_to root_path
  end

  private

    def thought_params
      params.require(:thought).permit(:title, :description)
    end
end
