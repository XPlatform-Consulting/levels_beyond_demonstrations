class CreateLevelsBeyondDemonstrations < ActiveRecord::Migration
  def self.up
    create_table :action_levels_beyond_demonstrations do |t|
      t.string :name
      t.string :comments
      t.string :operation

      t.timestamps
    end
  end

  def self.down
    drop_table :action_levels_beyond_demonstrations
  end
end
