require 'vending'
  
RSpec.describe VendingMachine do
    let(:vending) { VendingMachine.new }

    describe "#purchase" do
        it "Subtract inventory by bottles purchased" do
            vending.purchase(2)
            expect(vending.inventory).to eq(15)
        end
    end

    describe "#restock" do
        it "Add inventory by bottles restocked" do
            vending.restock(12)
            expect(vending.inventory).to eq(29)
        end
    end

    describe "#report_inventory" do
        it "Show inventory" do
            expect(vending.report_inventory).to eq("Inventory: 17 bottles")
        end
    end
end
