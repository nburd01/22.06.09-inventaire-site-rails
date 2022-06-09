require 'csv'

# CSV.read("item.csv")

class Item
    attr_accessor :id, :name 

    def initialize(id, name)
        @id = id
        @name = name
    end

    def self.all
        item_temporary = []
        all_items = []
        CSV.foreach("db/item.csv") do |row|
          item_temporary = Item.new(row[0], row[1])
          all_items << item_temporary
        end
        return all_items
      end
end




