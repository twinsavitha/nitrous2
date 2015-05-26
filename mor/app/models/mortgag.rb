class Mortgag < ActiveRecord::Base
   searchable do
     text :schemecat
     string :schemecat
end
  def fol
    folio.to_s
  end
end
