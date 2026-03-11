class CreateCommandConfigs < ActiveRecord::Migration[8.1]
  def change
    create_table :command_configs do |t|
      t.string :name
      t.string :args
      t.text :notes
      t.integer :priority
      t.timestamps
    end
  end
end
