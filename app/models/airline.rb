class Airline < ApplicationRecord
    has_many :reviews

    before_create :slugify

    def slugify
        self.slug = name.parameterize
    end

    def avg_score
        return 0 unless reviews.count.positive?

        reviews.average(:score).round(2).to_f
    end 

    def custom_slug
        puzzle = rand(1111...99999)
        return "#{slug}-#{puzzle}"
       
    end 
end
