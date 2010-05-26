class AddMapAttributeToProfiles < ActiveRecord::Migration
  def self.up
     add_column :profiles, :on_map, :boolean

    @profiles = Profile.find(:all)
    @profiles.each do |profile|
      profile.update_attribute(:on_map, false)
   end
 end

  def self.down
     remove_column :profiles, :on_map
  end
end