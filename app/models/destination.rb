class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def recent_5
        self.posts.last(5)
    end

    def featured_post
        self.posts.max_by do |post| 
            post.likes
        end
    end

    def avg_age
        age = self.bloggers.uniq.map(&:age) 
        age.sum / age.count
    end
end
