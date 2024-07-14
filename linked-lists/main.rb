require_relative "linked_list"

list = LinkedList.new
list.append(42)
list.append(15)
list.append(30)
list.append(60)
list.prepend(4)

p list
