class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.string :title
      t.text :description
      t.string :name
      t.string :ip

      t.timestamps
    end
  end
end
