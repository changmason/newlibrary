class Book < ActiveRecord::Base
  attr_accessible :auther, :description, :publish_date, :title
end
