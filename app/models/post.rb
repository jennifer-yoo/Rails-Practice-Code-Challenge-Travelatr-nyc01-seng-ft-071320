class Post < ApplicationRecord
    belongs_to :blogger
    belongs_to :destination

    validates :content, length: { minimum: 100}

    def like_click
      
    end
end
