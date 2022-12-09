class DevSerializer < ActiveModel::Serializer
  attributes :id,:username,:fname,:lname
  #, :articles
  has_many :articles
end
