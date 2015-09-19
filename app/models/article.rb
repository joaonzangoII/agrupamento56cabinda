class Article < ActiveRecord::Base
  searchkick  word_start: [:title]
  validates :title, presence: true,length: { minimum: 5 }
  # def self.search(search)
  #   where("title LIKE ?", "%#{search}%") 
  #   # where("content LIKE ?", "%#{search}%")
  # end
end
