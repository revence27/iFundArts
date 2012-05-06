class ProjectCategory < ActiveRecord::Base
  belongs_to :project

  def combien
    Project.where(:category_id => self.id).count
  end
end
