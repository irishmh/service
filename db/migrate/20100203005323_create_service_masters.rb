class CreateServiceMasters < ActiveRecord::Migration
  def self.up
    create_table :service_masters do |t|
      t.string :service_desc
      t.decimal :hrs_est
      t.decimal :hrs_actual
      t.string :servicer
      t.decimal :total_cost
      t.string :status_code, :limit => 1

      t.timestamps
    end
  end

  def self.down
    drop_table :service_masters
  end
end
