class FBKey < ActiveRecord::Base
  def save_once
    fst = self
    if FBKey.count > 0 then
      fst = FBKey.first
      fst.key = self.key
    else
      fst = self
    end
    fst.save
  end
end
