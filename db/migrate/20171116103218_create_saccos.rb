class CreateSaccos < ActiveRecord::Migration[5.1]
  def change
    create_table :saccos do |t|
      t.column :name, :string
      t.column :email, :string
      t.column :phone, :integer, null: false, limit: 10, unique: true
      t.column :logo, :string

      t.timestamps
    end
  end
end
