class CreateSurveysUsers < ActiveRecord::Migration[5.1]
  def change
    create_table(:surveys_users) do |t|
    t.column(:user_id, :int)
    t.column(:survey_id, :int)
    t.timestamps()
  end
end
end
