class CreateSuperPowers < ActiveRecord::Migration[6.0]
  def change
    create_table :super_powers do |t|
      t.string :name
      t.string :reason
      t.integer :rating
      t.boolean :already_exists?

      t.timestamps
    end
  end
end
