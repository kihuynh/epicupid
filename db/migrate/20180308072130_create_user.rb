class CreateUser < ActiveRecord::Migration[5.1]
  def change
    create_table(:users) do |t|
      t.column(:track, :string)
      t.column(:first_name, :string)
      t.column(:last_name, :string)
      t.column(:email, :string)
      t.column(:github, :string)
      t.timestamps()
    end
    create_table(:surveys) do |t|
		t.column(:question1, :int)
		t.column(:question2, :int)
		t.column(:question3, :int)
		t.column(:question4, :int)
		t.column(:question5, :int)
  end
end
end
