require 'menu'

describe Menu do
  it "returns a menu" do
    sunday = Menu.new
    expect(sunday.menu).to eq ["Sausage and Mash, 16.99",
      "Burger and Chips, 19.99",
      "Chicken Korma and Pilau Rice, 15.99",
      "Apple Crumble, 12.99"
    ]
  end
  it "lets user make an order" do 
    sunday = Menu.new 
    expect(sunday.select_order("2 4")).to eq "You succesfully ordered Burger and Chips & Apple Crumble."
  end
  it "returns reciept" do 
    sunday = Menu.new 
    sunday.select_order("2 4")
    expect(sunday.reciept).to eq "Burger and Chips = 19.99 Apple Crumble = 12.99 Total = 32.98"
  end  
end