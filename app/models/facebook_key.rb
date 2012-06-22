class FacebookKey < ActiveRecord::Base
  def save_once
    fst = self
    if FacebookKey.count > 0 then
      fst = FacebookKey.first
      fst.key = self.key
    else
      fst = self
    end
    fst.save
  end
end
