class AirlineSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :slug, :avg_score, :custom_slug

  has_many :reviews
end
