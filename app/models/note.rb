class Note
  include Tire::Model::Persistence
  include Tire::Model::Search
  include Tire::Model::Callbacks
  
  index_name ES_INDEX_NAME
  
  refresh = lambda { Tire::Index.new(ES_INDEX_NAME).refresh }
  after_save &refresh
  after_destroy &refresh

  property :body
  
  property :updated_at
  before_save { |n| n.updated_at = Time.now }
  
  def self.touch_es
    n = Note.new
    n.save
    n.destroy
  end
  def self.all
    search { sort { by :updated_at, 'desc' } }
  end
  def self.q(q)
    search { sort { by :updated_at, 'desc' }; query { string q } }
  end
  
end
