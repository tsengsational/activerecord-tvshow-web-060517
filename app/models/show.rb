class Show < ActiveRecord::Base

  def self.highest_rating
    self.order(rating: :desc).take.rating
  end

  def self.most_popular_show
    self.order(rating: :desc).take
    # binding.pry
  end

  def self.lowest_rating
    self.order(rating: :asc).take.rating
  end

  def self.least_popular_show
    self.order(rating: :asc).take
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    self.order(name: :asc)
  end

end
