class BaitValidator < ActiveModel::EachValidator
  def validate(title)
    options = ["Won't Believe", "Secret", "Top [number]", "Guess"]
      options.each do |check|
        unless title.include?(check)
          record.errors[:title] << 'The title needs to be clickbait'
        end
      end
  end
end
