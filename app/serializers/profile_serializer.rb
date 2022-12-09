class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :bio,:image_url,:linkedin,:github,:twitter
  belongs_to :dev
end
