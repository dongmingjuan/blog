class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  # 每页显示文章数目
  paginates_per 5
  # 文章标题
  field :title,              type: String
  validates :title, presence: true
  # 文章内容
  field :content,               type: String
  validates :content, presence: true
end
