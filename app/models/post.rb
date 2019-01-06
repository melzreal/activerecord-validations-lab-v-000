class Post < ActiveRecord::Base
 validate_clickbait(:title)
 validates :title, presence: true, title: true
 validates :content, length: { minimum: 250 }
 validates :summary, length: { maximum: 250 }
 validates :category, inclusion:  { in: %w(Fiction Non-Fiction) }



   def validate_clickbait(title)
     options = ["Won't Believe", "Secret", "Top [number]", "Guess"]
       options.each do |check|
         unless title.include?(check)
           errors.add(:title, "The title needs to be clickbait")
         end
       end
   end

end
