class Mortgage < ActiveRecord::Base
  searchable do
    text :folio
    string :folio
end
end
