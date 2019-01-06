class BaitValidator < ActiveModel::Validator
  def validate(title)
    unless title.include?("Won't Believe", "Secret", "Top [number]", "Guess")
      record.errors[:title] << 'The title needs to be clickbait'
    end
  end
end
