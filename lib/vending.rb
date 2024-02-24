class VendingMachine
    attr_accessor :inventory
  
    def initialize
        @inventory = 17
    end
  
    def purchase(drinks)
        @inventory -= drinks
    end
  
    def restock(bottles)
        @inventory += bottles
    end
  
    def report_inventory
        "Inventory: #{@inventory} bottles"
    end
end