class AddTocToTasks < ActiveRecord::Migration[6.0]
  def change
	reversible do |dir|
		dir.up do
			execute <<-SQL
			ALTER TABLE tasks
			ADD COLUMN toc DOUBLE GENERATED ALWAYS AS (pow(((max_duration - av_duration)/2),2)) STORED;
			SQL

		end
		dir.down do
			execute <<-SQL
			ALTER TABLE tasks
		       	DROP COLUMN toc;
			SQL
		end
	end
  end
end
