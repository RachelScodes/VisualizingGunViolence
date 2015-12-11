class FixColumnNameType < ActiveRecord::Migration
  def change
   rename_column :statistics, :type, :shooting_type
  end
end
