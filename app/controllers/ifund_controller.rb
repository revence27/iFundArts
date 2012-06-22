class IfundController < ApplicationController
  before_filter :admins_only, :only => [:admin, :admin_settings]
  before_filter :set_fb_key

  def set_fb_key
    @fbkey  = FacebookKey.first
    @fbkey  = (@fbkey ? @fbkey.key : 'FACEBOOK_KEY')
  end

  def index
    @projects = Project.order('ends_at ASC').where(:funded_at => nil).limit 3
    @newbies  = Project.order('created_at ASC').limit 3
    @finished = Project.order('funded_at DESC').where('funded_at IS NOT NULL').limit 3
  end

  def admins_only
    unless session[:admin] then
      redirect_to admin_login_path
    end
  end

  def admin_auth
    if AdminPassword.first.authenticates? request[:adminpass] then
      session[:admin] = true
      redirect_to admin_path
    else
      flash[:login] = %[The password was incorrect.]
      redirect_to admin_login_path
    end
  end

  def admin_settings
    fb  = FacebookKey.first
    fb  = FacebookKey.new unless fb
    fb.key  = request[:fbkey]
    fb.save
    if request[:pass] != request[:pass2] then
      flash[:pass] = %[The two passwords you provided do not match, so the password was not changed.]
    else
      pass  = AdminPassword.first
      pass.delete if pass
      salt  = File.open('/dev/random') {|f| [f.read(10)].pack('m') }
      sha1  = Digest::SHA1.new << %[#{salt}#{request[:pass]}]
      pass  = AdminPassword.create :sha1_pass => sha1.to_s, :sha1_salt => salt
    end
    redirect_to admin_path
  end

  def admin_login
  end

  def admin
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
    proj  = Project.new(:name         => request[:name],
                        :image        => ifname,
                        :description  => request[:description],
                        :ends_at      => iends,
                        :needs        => ineeds)

    redirect_to explore_path
  end

  def project
    @project = Project.find_by_id request[:id]
  end

  def support
    @project = Project.find_by_id request[:id]
  end
end
