class MissingController < ApplicationController
 #  include AuthenticatedSystem

    # before_filter :login_required, :except => [:list]
    before_filter :set_pagetitle

  def set_pagetitle
    @pagetitle = "Missing List"
  end

  def index
    @profiles = Profile.find(:all, :conditions => {:profile_status => 'Missing'}, :order => 'last_name')
   # @profiles = Profile.search(params[:search], params[:page])
  end

  def list
   @profiles = Profile.find(:all, :conditions => {:profile_status => 'Missing'}, :order => 'last_name')
   @page = Page.find_by_name(params[:name])
   @subpages = @page.subpages
   @pagetitle = @page.title
   login_required if @page.admin?
   get_page_metadata
  end

end