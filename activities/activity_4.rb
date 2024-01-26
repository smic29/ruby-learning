# class Confection
#   def prepare
#     puts "Baking at 350 degrees for 25 minutes"
#   end
# end

# class Cupcake < Confection
#   def prepare
#     super
#     puts 'Applying frosting'
#   end
# end

# class Banana_Cake < Confection
# end

# pastry_one = Cupcake.new
# pastry_two = Banana_Cake.new

# pastry_one.prepare
# pastry_two.prepare

#### Fix the Code
require 'rspec'

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

define 'Admin' do
  it 'can login' do
    my_admin = Admin.new('avionuser', 'password', '127.0.0.1')

    expect do
      my_admin.admin_login
    end.to output('User logged in. IP address: 127.0.0.1').to_stdout
  end

  it 'can edit users profile' do
    expect do
      my_admin.edit_users_profile
    end.to output('Admin updated all users profile').to_stdout
  end

  it 'can change username' do
    my_admin.change_username = 'avionuser_new'
    expect(my_admin.username).to eq('avionuser_new')
  end
end

define 'Buyer' do
  it 'can login' do
    juan = Buyer.new('juan', 'password', '127.0.0.1')

    expect do
      juan.admin_login
    end.to output('User logged in. IP address: 127.0.0.1').to_stdout
  end

  it 'buy' do
    expect do
      juan.buy
    end.to output('Buyer has bought an item').to_stdout
  end

  it 'can change username' do
    juan.change_username = 'juandelacruz'
    expect(juan.username).to eq('juandelacruz')
  end
end
