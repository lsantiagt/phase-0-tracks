class TodoList

	def initialize(list)
        @rlist = list
	end

    def get_items
        @rlist
    end
    def add_item(item)
        @rlist.push(item)
    end   
    def delete_item(item)
    	@rlist.delete_if {|val| val == item}
    end 
    def get_item(indx)
    	@rlist[indx]
    end


end

list = TodoList.new(["ad","a"])
list.get_items
p list