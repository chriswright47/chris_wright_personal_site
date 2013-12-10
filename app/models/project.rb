class Project < ActiveRecord::Base
  attr_accessible :name, :company, :description, :url_path

end
