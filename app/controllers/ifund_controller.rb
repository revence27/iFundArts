class IfundController < ApplicationController
  def index
    @projects = Project.order('ends_at ASC')
  end
end
