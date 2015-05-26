class One < ActiveRecord::Base
  searchable do
    text :incident, :modifications
    string :incident
  end
end
