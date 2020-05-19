class CreateReviewers < ActiveRecord::Migration[6.0]
  def change
    create_table :reviewers do |t|
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
