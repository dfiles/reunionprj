class Profile < ActiveRecord::Base

  def self.search(search, page)
  paginate :per_page => 15, :page => page,
           :conditions => ['last_name like ?', "%#{search}%"],
           :order => 'last_name'
  end

   named_scope :missing_classmates, :conditions => {:profile_status => 'Missing'}, :order => 'last_name'
   named_scope :deceased_classmates, :conditions => {:profile_status => 'Deceased'}, :order => 'last_name'
   named_scope :active_classmates, :conditions =>  {:profile_status => 'Contact'}, :order => 'last_name'
end
