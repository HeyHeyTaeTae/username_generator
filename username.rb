# generate_username1
def generate_username1(first_name)
  # grabs first index of firstname
  # makes it lowercase
  first_name[0].downcase
end

def generate_username2(first_name, last_name)
  # check for empty strings and return nil if ""
  if first_name != "" && last_name != ""
 #run code
  # eliminate special characters
  # combine first index of firstname and lastname
  # after removing trailing and leading spaces
  # downcase result
 	a = first_name.strip.gsub(/[123!@-]/, "")
 	b = last_name.gsub(/[123!@-]/, "").downcase.strip
 	firstLast = generate_username1(a) + b
  else
  	nil
  end
end  

def generate_username3(first_name, last_name, birth_year)
  # check birth_year for length 4
  if birth_year.to_s.length == 4
  	generate_username2(first_name, last_name) + birth_year.to_s[-2..-1] 
  end	
  nil
end

def check_privilege(key = 0)
  table = {0 => "user", 1 => "seller", 2 => "manager", 3 => "admin" }
  table[key]
end

def generate_username4(first_name, last_name, birth_year, key)
  if key == 1 || 2 || 3
  	return check_privilege(key) + "-" + generate_username3(first_name, last_name, birth_year)
  elsif key == 0
  	return generate_username3(first_name, last_name, birth_year)
  end
  nil
end



