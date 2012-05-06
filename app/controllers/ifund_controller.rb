class IfundController < ApplicationController
  def index
    @projects = Project.order('ends_at ASC').where(:funded_at => nil).limit 3
    @newbies  = Project.order('created_at ASC').limit 3
    @finished = Project.order('funded_at DESC').where('funded_at IS NOT NULL').limit 3
  end

  def explore
    @projects   = Project.order('ends_at ASC')
    if request[:category] then
      @projects  = @projects.where(:category_id => request[:category])
    end
    @projects   = @projects.paginate(:page => request[:page])
    @categories = ProjectCategory.order('name ASC')
  end

  def creator
    redirect_to explore_path
  end
end
