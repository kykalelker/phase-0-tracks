#Challenge 6.5
#Wan and Kanan
#Github: wantsui and kykalelker
class TodoList
    def initialize(array)
        @items_list =[]
        array.each{|item| @items_list << item}
    end
    def get_items()
        @items_list
    end
    def add_item(item)
        @items_list.push(item)
    end
    def delete_item(item)
        @items_list.delete(item)
    end
    def get_item(index)
        @items_list[index]
    end
end