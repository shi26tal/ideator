class StaticPagesController < ApplicationController
  # handle req fro about page
  def about
  end

  # handle req for inspire me page
  def random
    @idea = Idea.all.sample
  end
end
