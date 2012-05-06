class Project < ActiveRecord::Base
  has_one :category

  def fund_pc
    (((self.needs - self.has_got) / self.needs) * 100.0)
  end
end
