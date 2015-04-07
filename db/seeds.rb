# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = ["A. K. Hangal", "Aadhi", "Aadi Pudipeddi", "Aamir Khan", "Aashish Chaudhary", "Abbas", "Abhay Deol", "Abhijeeth", "Abhishek Bachchan", "Abhimanyu Singh", "Abijeet Duddala", "Achyuth Kumar", "Adharvaa", "Adhyayan Suman", "Adithya Menon", "Aditya Babu", "Aditya Pancholi", "Aditya Roy Kapur", "Adoor Bhasi", "Aftab Shivdasani", "Ahuti Prasad", "Ajay Devgan", "Ajay Sinh Rathod", "Ajay Rao", "Ajaz Khan", "Ajinkya Dev", "Ajit Khan", "Ajith Kumar", "Ajmal Ameer", "Aju Varghese", "Akshay Anand", "Akshay Kumar", "Akshaye Khanna", "Akul Balaji", "Ali Basha", "Allari Naresh", "Allu Arjun", "Allu Sirish", "Alok Nath", "Amar Talwar", "Ambareesh", "Amitabh Bachchan", "Amjad Khan", "Amol Palekar", "Amrish Puri", "Ananth Nag", "Anil Kapoor", "Anjan Srivastav", "Ankush Hazra", "Annu Kapoor", "Anoop Kumar", "Anoop Menon", "Anubhav Mohanty", "Anuj Gurwara", "Anupam Kher", "Aravind Akash", "Arbaaz Khan", "Arif Zakaria", "Arjun Kapoor", "Arjun Mathur", "Arjun Rampal", "Arjun Sarja", "Arshad Warsi", "Arun Sarnaik", "Arunoday Singh", "Arvind Krishna", "Arvind Swamy", "Arya Babbar", "Arya Cethirakath", "Asif Ali", "Ashish Vidyarthi", "Ashok", "Ashok Kumar", "Ashwath", "Asrani", "Ashok Saraf", "Ashok Selvan", "Atul Agnihotri", "Atul Kulkarni", "Auditya", "Avinash", "Ayushman Khurana" ]
users.each do |user|
  User.create({name: user})
end
