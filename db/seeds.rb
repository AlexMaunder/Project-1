User.destroy_all
u1 = User.create :email => 'jonesy@ga.co', :password => 'chicken'
u2 = User.create :email => 'craigsy@ga.co', :password => 'chicken'
puts "#{User.count} users"

Resource.destroy_all
r1 = Resource.create :title => "JavaScript MDN", :url => "https://developer.mozilla.org/en-US/docs/Web/JavaScript"
r2 = Resource.create :title => "Python AI", :url => "https://www.tutorialspoint.com/artificial_intelligence_with_python/index.htm"
r3 = Resource.create :title => "Ruby Documentation", :url => "https://www.ruby-lang.org/en/documentation/"
r4 = Resource.create :title => "Learn Rust", :url => "https://www.rust-lang.org/"
puts "#{Resource.count} resources"

Book.destroy_all
b1 = Book.create :title => "JavaScript: The Good Parts", :image => "https://images-na.ssl-images-amazon.com/images/I/91YlBt-bCHL._SL1500_.jpg", :url => "https://www.amazon.com.au/JavaScript-Good-Parts-ebook/dp/B0026OR2ZY"
b2 = Book.create :title => "Python Crash Course", :image => "https://images-na.ssl-images-amazon.com/images/I/51PZ6YIfe9L._SX376_BO1,204,203,200_.jpg", :url => "https://www.amazon.com.au/dp/1593276036?tag=hackr-22"
b3 = Book.create :title => "Eloquent Ruby", :image => "https://images-na.ssl-images-amazon.com/images/I/41ESgE1dOAL._SX258_BO1,204,203,200_.jpg", :url => "https://books.google.com.au/books/about/Eloquent_Ruby.html?id=-s2xL0pVsLUC&printsec=frontcover&source=kp_read_button&redir_esc=y#v=onepage&q&f=false"
b4 = Book.create :title => "Programming Rust", :image => "https://images-na.ssl-images-amazon.com/images/I/51c-tuESgdL._SX379_BO1,204,203,200_.jpg", :url => "https://www.amazon.com.au/Programming-Rust-Jim-Blandy/dp/1491927283/ref=sr_1_2?dchild=1&keywords=rust+language&qid=1592792074&s=books&sr=1-2"
puts "#{Book.count} books"

Language.destroy_all
l1 = Language.create :title => "JavaScript", :image => "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQHy2wK-DnljuyhJmhqvcuxs7VGzw_z94VIwtdgm6ygGmQIkUa1&usqp=CAU"
l2 = Language.create :title => "Python", :image => "https://qph.fs.quoracdn.net/main-qimg-28cadbd02699c25a88e5c78d73c7babc"
l3 = Language.create :title => "Ruby", :image => "https://blog.mwpreston.net/wp-content/uploads/2018/09/ruby-logo.png"
l4 = Language.create :title => "Rust", :image => "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Rust_programming_language_black_logo.svg/1200px-Rust_programming_language_black_logo.svg.png"
puts "#{Language.count} languages"

Repo.destroy_all
p1 = Repo.create :title => "Front End"
p2 = Repo.create :title => "Back End"
p3 = Repo.create :title => "Lex's Artificial Intelligence stream"
p4 = Repo.create :title => "Jake's Data Science stream"
puts "#{Repo.count} repo's"

##### Associations ######
puts "Languages and Resources"
l1.resources << r1
l2.resources << r2
l3.resources << r3
l4.resources << r4

# puts "Books and Languages"
# b1.language << l1
# b2.language << l2
# b3.language << l3
# b4.language << l4
puts "Languages and Books"
l1.books << b1
l2.books << b2
l3.books << b3
l4.books << b4

puts "Repos and Resources"
p1.resources << r1 << r2 << r3 << r4
p2.resources << r2 << r2 << r2 << r2
p3.resources << r2 << r3 << r2 << r4
p4.resources << r4 << r3 << r2 << r2

puts "Repos and Users"
u1.repos << p1 << p4
u2.repos << p2 << p3
