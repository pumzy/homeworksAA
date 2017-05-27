class Toy < ActiveRecord::Base
validates_uniqueness_of :name, scope: [:toyable_type, :toyable_id]

  belongs_to :toyable, polymorphic:true


end
