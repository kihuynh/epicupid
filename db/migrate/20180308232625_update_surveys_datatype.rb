class UpdateSurveysDatatype < ActiveRecord::Migration[5.1]
  def change
    remove_column :surveys, :question1, :integer
    remove_column :surveys, :question2, :integer
    remove_column :surveys, :question3, :integer
    remove_column :surveys, :question4, :integer
    remove_column :surveys, :question5, :integer
    add_column :surveys, :question1, :string
    add_column :surveys, :question2, :string
    add_column :surveys, :question3, :string
    add_column :surveys, :question4, :string
    add_column :surveys, :question5, :string
  end
end
