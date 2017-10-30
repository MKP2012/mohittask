class CreateWelHomes < ActiveRecord::Migration
  def change
    create_table :wel_homes do |t|

      t.timestamps null: false
    end
  end
end
