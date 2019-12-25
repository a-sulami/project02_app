class CreateLastEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :last_episodes do |t|
      t.string :episode_number

      t.timestamps
    end
  end
end
