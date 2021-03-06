class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :publishing
      t.string :type
      t.integer :user_id
      t.string :description

      t.timestamps
    end
  end
end
