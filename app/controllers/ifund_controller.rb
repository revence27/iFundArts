class IfundController < ApplicationController
  def index
    @projects = Project.order('ends_at ASC')
  end

  def explore
    @projects = Project.order('ends_at ASC')
  end

  def creator
    redirect_to explore_path
  end
end
