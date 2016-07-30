class PagesController < ApplicationController
  def home
    @thoughts = current_user.thoughts
  end
end
