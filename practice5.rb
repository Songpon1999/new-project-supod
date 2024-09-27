# create a new Class, User, that has the following attributes:
# - name
# - email
# - password
class User
  attr_accessor :name, :email, :password

  def initialize(name, email, password)
    @name = name
    @email = email
    @password = password
  end

  def display_info
    puts "Name: #{@name}"
    puts "Email: #{@email}"
    puts "Password: #{@password}" 
  end
end

user1 = User.new("Mr.Song", "Song_kota@hotmail.com", "789lnwza")

user1.display_info

# create a new Class, Room, that has the following attributes:
# - name
# - description
# - users
class Room
  attr_accessor :name, :description, :users  

  def initialize(name, description)
    @name = name
    @description = description
    @users = [] 
  end

  def add_user(user)
    @users << user  
  end

  def display_info
    puts "Room Name: #{@name}"
    puts "Description: #{@description}"
    puts "Users in the room: #{@users.join(', ')}"
  end
end

room1 = Room.new("Chat BU", "Home Basic Ruby for Rails")

room1.add_user("Pi Wan")
room1.add_user("Pi Taliw")

room1.display_info

# create a new Class, Message, that has the following attributes:
# - user
# - room
# - content
class Message
  attr_accessor :user, :room, :content  

  def initialize(user, room, content)
    @user = user
    @room = room
    @content = content
  end

  def display_message
    puts "[#{@room}] #{@user}: #{@content}" 
  end
end

message1 = Message.new("Pi Taliw", "Chat Bu", "Hello, SaWatdee!")

message1.display_message

# add a method to user so, user can enter to a room
class User
  attr_accessor :name, :email, :password

  def initialize(name, email, password)
    @name = name
    @email = email
    @password = password
  end

  def enter_room(room)
    room.add_user(@name)  
    puts "#{@name} has entered the room: #{room.name}" # user.enter_room(room)
  end
end

class Room
  attr_accessor :name, :description, :users

  def initialize(name, description)
    @name = name
    @description = description
    @users = []
  end

  def add_user(user)
    @users << user  
  end

  def display_info
    puts "Room Name: #{@name}"
    puts "Description: #{@description}"
    puts "Users in the room: #{@users.join(', ')}"
  end
end

user1 = User.new("Mr.Songpon", "Song_kota@hotmail.com", "789Inwza")
room1 = Room.new("Chat Bu", "Home Basic Ruby for Rails")

user1.enter_room(room1)

room1.display_info

# add a method to user so, user can send a message to a room
# user.send_message(room, message)
# user.ackowledge_message(room, message)
class User
  attr_accessor :name, :email, :password

  def initialize(name, email, password)
    @name = name
    @email = email
    @password = password
  end

  def enter_room(room)
    room.add_user(@name)
    puts "#{@name} has entered the room: #{room.name}"
  end

  def send_message(room, content)
    message = Message.new(@name, room.name, content)
    room.add_message(message)  
    puts "#{@name} sent a message to #{room.name}: #{content}"
  end

  def acknowledge_message(room, message)
    puts "#{@name} acknowledged the message in #{room.name}: #{message.content}"
  end
end

class Room
  attr_accessor :name, :description, :users, :messages

  def initialize(name, description)
    @name = name
    @description = description
    @users = []
    @messages = []  
  end

  def add_user(user)
    @users << user
  end

  def add_message(message)
    @messages << message  
  end

  def display_info
    puts "Room Name: #{@name}"
    puts "Description: #{@description}"
    puts "Users in the room: #{@users.join(', ')}"
    puts "Messages in the room:"
    @messages.each { |msg| puts "  #{msg.user}: #{msg.content}" }
  end
end

class Message
  attr_accessor :user, :room, :content

  def initialize(user, room, content)
    @user = user
    @room = room
    @content = content
  end
end

user1 = User.new("Mr.Song", "Song_kota@hotmail.com", "789Inwza")
room1 = Room.new("Chat Bu", "Home Basic Ruby for Rails")

user1.enter_room(room1)

user1.send_message(room1, "Hello, SaWatdee!")

room1.display_info

message = room1.messages.last
user1.acknowledge_message(room1, message)

# add a method to a room, so it can broadcast a message to all users
# room.broadcast(message)

class User
  attr_accessor :name, :email, :password

  def initialize(name, email, password)
    @name = name
    @email = email
    @password = password
  end

  def enter_room(room)
    room.add_user(self) 
    puts "#{@name} has entered the room: #{room.name}"
  end

  def send_message(room, content)
    message = Message.new(@name, room.name, content)
    room.add_message(message)  
    puts "#{@name} sent a message to #{room.name}: #{content}"
    room.broadcast(message)
  end

  def acknowledge_message(room, message)
    puts "#{@name} acknowledged the message in #{room.name}: #{message.content}"
  end
end

class Room
  attr_accessor :name, :description, :users, :messages

  def initialize(name, description)
    @name = name
    @description = description
    @users = []
    @messages = [] 
  end

  def add_user(user)
    @users << user
  end

  def add_message(message)
    @messages << message 
  end

  def broadcast(message)
    @users.each do |user|
      user.acknowledge_message(self, message) 
    end
  end

  def display_info
    puts "Room Name: #{@name}"
    puts "Description: #{@description}"
    puts "Users in the room: #{@users.map(&:name).join(', ')}"
    puts "Messages in the room:"
    @messages.each { |msg| puts "  #{msg.user}: #{msg.content}" }
  end
end

class Message
  attr_accessor :user, :room, :content

  def initialize(user, room, content)
    @user = user
    @room = room
    @content = content
  end
end

user1 = User.new("Mr.Song", "Song_kota@hotmail.com", "789Inwza")
user2 = User.new("Moodang", "Moo_dang@gmail.com", "123456789Za")
room1 = Room.new("Chat Bu", "Home Basic Ruby for Rails")

user1.enter_room(room1)
user2.enter_room(room1)

user1.send_message(room1, "Hello, SaWatdee!")

room1.display_info