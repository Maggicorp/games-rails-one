class CreateCompetingTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :competing_teams do |t|
      t.integer :score
      t.references :game
      t.references :team

      t.timestamps
    end
  end
end
