#Script to migrate the companies data from txt to rails sqlite database

#This script expects companies.txt in the current directory
#Run the below command 
#bundle exec rails runner "eval(File.read 'populate_companies.rb')"

File.open("companies.txt", "r").each_line do |line|
    puts line
       #save in db
#	   review = Review.new :res_id=>res_id, :yelp_id=>yelp_id, :ta_id=>ta_id, 
#	              :fs_id=>fs_id, :name=>name, :photo_url=>photo_url, :res_url=>res_url, :lat=>lat, :lon=>lon
end
