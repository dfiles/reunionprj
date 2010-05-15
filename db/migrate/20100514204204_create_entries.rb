class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.string :title
      t.text :body
      t.integer :comments_count

      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
