class Connection < ApplicationRecord
    belongs_to :user

    validates_presence_of :names
end
