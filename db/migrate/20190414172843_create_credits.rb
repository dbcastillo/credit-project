class CreateCredits < ActiveRecord::Migration[5.2]
  def change
    create_table :credits do |t|
      t.string :username
      t.integer :limit
      t.float :apr

      t.timestamps
    end
  end
end
