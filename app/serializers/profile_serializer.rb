class ProfileSerializer < ActiveModel::Serializer
  attributes :bio,:image_url,:linkedin,:github,:twitter
  belongs_to :dev
end
