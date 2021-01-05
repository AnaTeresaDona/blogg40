class Post < ApplicationRecord
    validates :title, presence: true
    validates :image_url, presence: true
    validates :content, presence: true

    before_save :replace_word

    def replace_word
        self.content = self.content.gsub "spoiler", ""
    end
end
