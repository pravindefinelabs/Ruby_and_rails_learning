class CerateArticles < ActiveRecord::Migration[7.1]
  def change # The change method is the primary method for writing migrations. It works for the majority of cases, where ActiveRecord knows how to reverse the migration automatically.
    create_table :articles do |t|
      t.string :title
      t.text :description
    end
  end
end
