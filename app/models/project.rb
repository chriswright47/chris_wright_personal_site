class Project < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
end
