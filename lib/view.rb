class View
    def self.all(all_items)
        all_items.each do |item|
          print "item ID :"
          puts "#{item.id}"
          print "item name :"
          puts "#{item.name}"
        end
      end
end