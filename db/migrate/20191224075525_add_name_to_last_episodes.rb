class AddNameToLastEpisodes < ActiveRecord::Migration[6.0]
  def change
    add_column :last_episodes, :name, :string
  end
end
