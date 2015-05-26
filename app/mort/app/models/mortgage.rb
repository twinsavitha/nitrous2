class Mortgage < ActiveRecord::Base
  searchable do
    text :folio
end
end
