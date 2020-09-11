# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    result = ListNode.new
    current = result
    extra = 0
    
    while l1 || l2 do
        current.next = ListNode.new
        current = current.next
        val = (l1 ? l1.val : 0) + (l2 ? l2.val : 0) + extra
        current.val = val % 10
        extra = val / 10
        l1 = l1 ? l1.next : nil
        l2 = l2 ? l2.next : nil
    end
    
    if extra > 0
        current.next = ListNode.new(1)
    end
    
    return result.next
end