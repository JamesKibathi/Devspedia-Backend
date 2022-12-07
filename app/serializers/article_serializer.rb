class ArticleSerializer < ActiveModel::Serializer
  attributes :id,:title,:content, :minutes_to_read,:featured_image,:likes,:created_at
  belongs_to :dev

end
