class Person < ActiveRecord::Base
  acts_as_gmappable
  attr_accessible :address, :name
  def gmaps4rails_address
    #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "#{self.address}"
  end
end
