class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    def most_liked
        self.posts.max_by do |post| 
            post.likes
        end
    end

    # def our_posts
    #     Post.all.select do |post|
    #         if post.blogger_id == self.id
    #         end
    #     end
    # end

    # def most_liked
    #     our_posts.max_by {|post| post.likes}
    # end
  
end

