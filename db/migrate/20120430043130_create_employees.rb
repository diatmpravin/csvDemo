class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :firstname, :default => "Vacant"
      t.string :lastname,  :default => "Position"
      t.integer :position
      t.string :positiontitle
      t.integer :reportto

      t.timestamps
    end
  end
end
