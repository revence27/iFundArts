class Project < ActiveRecord::Base
  has_one :category
  validates :name, :presence => true
  validates :image, :presence => true
  validates :description, :presence => true
  validates :ends_at, :presence => true
  validates :needs, :presence => true

  def fund_pc
    (((self.needs - self.has_got) / self.needs) * 100.0)
  end
end
