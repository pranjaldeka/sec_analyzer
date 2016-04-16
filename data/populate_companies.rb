#Script to migrate the companies data from txt to rails sqlite database

#This script expects companies.txt in the current directory
#Run the below command from rails app home 
#bundle exec rails runner "eval(File.read 'data/populate_companies.rb')"

count = 1
File.open("data/companies.txt", "r").each_line do |line|
    line = line.gsub("\n",'')
    puts line
    company = Company.new :c_id=>count, :c_name=>line
    company.save
    count = count + 1
end
