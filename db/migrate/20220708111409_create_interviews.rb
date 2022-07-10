class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.string :name
      t.date :interview_date
      t.timestamps
    end
  end
end
