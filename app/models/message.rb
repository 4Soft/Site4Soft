class Message < ActiveRecord::Base
  attr_accessible :body, :email, :enterprise, :name

  validates_presence_of :name, :email, :body
end
