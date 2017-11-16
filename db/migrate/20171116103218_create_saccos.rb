class CreateSaccos < ActiveRecord::Migration[5.1]
  def change
    create_table :saccos do |t|

      t.timestamps
    end
  end
end
