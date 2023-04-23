class Menu
  def initialize
    @menu = { 
      "Sausage and Mash" => 16.99,
      "Burger and Chips" => 19.99,
      "Chicken Korma and Pilau Rice" => 15.99,
      "Apple Crumble" => 12.99
    }
  end

  def menu
    menu = []
    @menu.each { |k, v| menu << "#{k}, #{v}"} 
    menu 
  end 

  def select_order(order)
    items = "You succesfully ordered "
    @orders = order.split(" ").map { |n| n.to_i }
    for i in @orders
      if @menu.keys[-1] == @menu.keys[i-1]
        items << "#{@menu.keys[i-1]}."
      else
        items << "#{@menu.keys[i-1]} & "
      end

    end  
    items 
  end 

  def reciept
    reciept = ""
    total = 0
    for i in @orders
      reciept <<"#{@menu.keys[i-1]} = #{@menu.values[i-1]} "
      total += @menu.values[i-1]
    end 
    reciept + "Total = #{total}"
  end 
  
end 
