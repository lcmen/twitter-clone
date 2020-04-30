namespace :db do
  desc "Clean existing data"
  task clean: :environment do
    Post.delete_all
  end
end
