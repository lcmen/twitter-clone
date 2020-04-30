namespace :db do
  desc "Clean existing data"
  task clean: :environment do
    puts "Removing old posts..."
    Post.delete_all
    puts "Done"
  end
end
