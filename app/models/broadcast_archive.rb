class BroadcastArchive < ActiveRecord::Base
    belongs_to :broadcast
    validates_presence_of :date, :description
end
