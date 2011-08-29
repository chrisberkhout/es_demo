class Note
  include Tire::Model::Persistence
  include Tire::Model::Search
  include Tire::Model::Callbacks
  
  index_name ES_INDEX_NAME
  refresh = lambda { Tire::Index.new(ES_INDEX_NAME).refresh }
  after_save &refresh
  after_destroy &refresh

  property :body
  
end
