class Confection
  def prepare
    puts "Baking at 350 degrees for 25 minutes"
  end
end

class Cupcake < Confection
  def prepare
    super
    puts 'Applying frosting'
  end
end

class Banana_Cake < Confection
end

pastry_one = Cupcake.new
pastry_two = Banana_Cake.new

pastry_one.prepare
pastry_two.prepare

#### Fix the Code

module AdminPermisson
  def edit_users_profile
    puts "Admin updated all users profile"
  end
end

module BuyerPermission
  def buy
    puts "Buyer has bought an item"
  end

end

class User
  def initialize(username, password, ip_address)
    @username = username
    @password = password
    @ip_address = ip_address
  end

  protected
  def login
    puts "User logged in. IP address: #{@ip_address}"
  end
end


class Admin < User
include AdminPermisson

  def admin_login
    login
  end

  attr_writer :change_password
end


class Buyer < User
include BuyerPermission

  def buyer_login
    login
  end

  attr_writer :change_password

end



## execute

my_admin = Admin.new('avionuser', 'password', '127.0.0.1')
my_admin.admin_login
my_admin.edit_users_profile

my_admin.change_password = 'new_password'

buyer = Buyer.new('juan', 'password', '127.0.0.1')
buyer.buyer_login
buyer.buy

buyer.change_password = 'new_password'

p buyer.inspect
