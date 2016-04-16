#Script to migrate the anti rules data from txt to rails sqlite database

#This script expects anti_rules.txt in the current directory
#Run the below command from rails app home 
#bundle exec rails runner "eval(File.read 'data/anti_rules.rb')"

File.open("data/anti_rules.txt", "r").each_line do |line|
    line = line.gsub("\n",'')
    puts line
    cols = line.split("-")
    r1_name = cols[0].strip
    r2_name = cols[1].strip
    row1 = Rule.find_by r_name: r1_name
    r1_id = row1[:r_id]
    row2 = Rule.find_by r_name: r2_name
    r2_id = row2[:r_id]
    puts r1_id
    puts r2_id
    anti_rule = AntiRule.new :r1_id=>r1_id, :r2_id=>r2_id
    anti_rule.save
end
