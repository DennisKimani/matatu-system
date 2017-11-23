class CreateSaccos < ActiveRecord::Migration[5.1]
  def change
    create_table :saccos do |t|
      t.column :name, :string
      t.column :email, :string
      t.column :phone, :integer
      t.column :logo, :string
      
      t.timestamps
    end
  end
end
