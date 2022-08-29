class Show < ActiveRecord::Base

    def self.highest_rating
        highest_rating = self.order(rating: :desc).limit(1)[0]
        highest_rating.rating
    end

    def self.most_popular_show 
        most_popular_show = self.order(rating: :desc).limit(1)[0]
        most_popular_show
    end

    def self.lowest_rating
        lowest_rating = self.order(rating: :asc).limit(1)[0]
        lowest_rating.rating
    end

    def self.least_popular_show 
        least_popular_show = self.order(rating: :asc).limit(1)[0]
        least_popular_show
    end

    def self.ratings_sum
        self.sum(:rating)
    end

    def self.popular_shows
        self.where("rating > ?", 5).order(rating: :desc)
    end

    def self.shows_by_alphabetical_order
        self.order(name: :asc)
    end
end
