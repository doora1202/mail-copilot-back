class Apikey < ApplicationRecord
    validates :key, presence:true
end
