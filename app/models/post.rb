class Post < ActiveRecord::Base

 validates :title, presence: true, title: true
 validates :content, length: { minimum: 250 }
 validates :summary, length: { maximum: 250 }
 validates :category, inclusion:  { in: %w(Fiction Non-Fiction) }
 validate  clickbait?


   def clickbait?
     options = ["Won't Believe", "Secret", "Top [number]", "Guess"]
       options.each do |check|
         unless title.include?(check)
           errors.add(:title, "The title needs to be clickbait")
         end
       end
   end

end
