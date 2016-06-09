require 'csv'

class Product < ApplicationRecord
  
  def self.to_csv(options = {})
    desired_columns = ["id", "name", "released_on", "price"]
    CSV.generate(options) do |csv|
      csv << desired_columns
      all.each do |product|
        csv << product.attributes.values_at(*desired_columns)
      end
    end
  end
    
end
