class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :last_episode
end
