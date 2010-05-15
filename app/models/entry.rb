class Entry < ActiveRecord::Base
   validates_presence_of :body, :title
end
