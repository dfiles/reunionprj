class Profile < ActiveRecord::Base
 def self.search(search, page)
  paginate :per_page => 25, :page => page,
           :conditions => ['last_name like ?', "%#{search}%"],
           :order => 'last_name'
 end
end