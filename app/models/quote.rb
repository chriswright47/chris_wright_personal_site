class Quote < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :content, :author, :link
end
