class CreatePesselForms < ActiveRecord::Migration
  def change
    create_table :pessel_forms do |t|
      t.string :pessel

      t.timestamps null: false
    end
  end
end
