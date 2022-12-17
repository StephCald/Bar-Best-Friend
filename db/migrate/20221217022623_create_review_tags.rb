class CreateReviewTags < ActiveRecord::Migration[7.0]
  def change
    create_table :review_tags do |t|

      t.references  :review, foreign_key: true
      t.references  :tag, foreign_key: true
      t.timestamps
    end
  end
end
