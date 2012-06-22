class AdminPassword < ActiveRecord::Base
  def authenticates? str
    sha = Digest::SHA1.new << %[#{self.sha1_salt}#{str}]
    sha.to_s == self.sha1_pass
  end
end
