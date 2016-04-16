#Script to migrate the filter-rules mapping data from txt to rails sqlite database

#This script expects filter_rules.txt in the current directory
#Run the below command from rails app home 
#bundle exec rails runner "eval(File.read 'data/populate_filter_rules.rb')"

File.open("data/filter_rules.txt", "r").each_line do |line|
    line = line.gsub("\n",'')
    puts line
    cols = line.split("-")
    f_name = cols[0].strip
    row = Filter.find_by f_name: f_name
    f_id = row[:f_id]
    puts f_id
    r_name_list = cols[1]
    r_names = r_name_list.split(",")
    r_ids = ""
    for r_name in r_names
    	r_name = r_name.strip
    	row = Rule.find_by r_name:r_name
    	r_id = row[:r_id]
    	r_ids = r_ids + r_id.to_s + "," 
    end
    r_ids = r_ids.chomp(",")
    filter_rule = FilterRule.new :f_id=>f_id, :r_ids=>r_ids
    filter_rule.save
end
