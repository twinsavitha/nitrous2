class Catalog < ActiveRecord::Base
  has_many :saps, :foreign_key => "Catalog_id"
end
