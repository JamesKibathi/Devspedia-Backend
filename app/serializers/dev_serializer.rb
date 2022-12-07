class DevSerializer < ActiveModel::Serializer
  attributes :username,:fname,:lname
  #, :articles
  has_many :articles
end
