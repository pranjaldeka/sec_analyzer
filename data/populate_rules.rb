#Script to migrate the rules data from txt to rails sqlite database

#This script expects rules.txt in the current directory
#Run the below command from rails app home 
#bundle exec rails runner "eval(File.read 'data/populate_rules.rb')"

count = 1
File.open("data/rules.txt", "r").each_line do |line|
    line = line.gsub("\n",'')
    puts line
    cols = line.split(",")
    r_name = cols[0].strip
    is_flag = cols[1].strip
    rule = Rule.new :r_id=>count, :r_name=>r_name, :is_flag=>is_flag
    rule.save
    count = count + 1
end
