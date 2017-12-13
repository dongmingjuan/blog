class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  # 每页显示文章数目
  paginates_per 5
  # 文章标题
  field :review,              type: String
  validates :review, presence: true

  # 关联关系
  belongs_to :post
  belongs_to :user
end
