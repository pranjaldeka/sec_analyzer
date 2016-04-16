#Script to migrate the filters data from txt to rails sqlite database

#This script expects filters.txt in the current directory
#Run the below command from rails app home 
#bundle exec rails runner "eval(File.read 'data/populate_filters.rb')"

count = 1
File.open("data/filters.txt", "r").each_line do |line|
    line = line.gsub("\n",'')
    puts line
    filter = Filter.new :f_id=>count, :f_name=>line
    filter.save
    count = count + 1
end
