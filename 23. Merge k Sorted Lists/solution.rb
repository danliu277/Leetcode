# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
    values = []
    head = current = ListNode.new
    lists.each do |list|
        while list != nil
            values.push(list.val)
            list = list.next
        end
    end
    values.sort.each do |val|
        current.next = ListNode.new(val)
        current = current.next
    end
    return head.next
end