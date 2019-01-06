class BaitValidator < ActiveModel::Validator
  def validate(title)
    options = ["Won't Believe", "Secret", "Top [number]", "Guess"]
    unless title.include?(options)
      record.errors[:title] << 'The title needs to be clickbait'
    end
  end
end
