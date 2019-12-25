class AddUserIdToLastEpisodes < ActiveRecord::Migration[6.0]
  def change
    add_reference :last_episodes, :user, null: false, foreign_key: true
  end
end
