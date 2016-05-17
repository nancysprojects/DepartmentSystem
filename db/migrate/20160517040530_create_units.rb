class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :deptcode
      t.text :deptname

      t.timestamps null: false
    end
  end
end
