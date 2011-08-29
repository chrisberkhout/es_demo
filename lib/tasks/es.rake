namespace :es do
  desc "Delete the ElasticSearch index for the current environment"
  task :drop => :environment do
    Tire::Index.new(ES_INDEX_NAME).delete
  end
  desc "Create the ElasticSearch index for the current environment"
  task :create => :environment do
    Tire::Index.new(ES_INDEX_NAME).create
  end
end
