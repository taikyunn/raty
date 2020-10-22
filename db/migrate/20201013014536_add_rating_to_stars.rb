class AddRatingToStars < ActiveRecord::Migration[6.0]
  def change
    add_column :stars, :rating, :float
  end
end
