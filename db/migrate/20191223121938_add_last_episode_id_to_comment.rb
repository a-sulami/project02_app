class AddLastEpisodeIdToComment < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :last_episode, null: false, foreign_key: true
  end
end
