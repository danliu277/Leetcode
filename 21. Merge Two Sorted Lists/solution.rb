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
def merge_two_lists(l1, l2)
    temp = ListNode.new
    result = temp
    
    while l1 != nil && l2 != nil do
        if l1.val <= l2.val
            temp.next = ListNode.new(l1.val)
            l1 = l1.next
        else
            temp.next = ListNode.new(l2.val)
            l2 = l2.next
        end
        temp = temp.next
    end
    while l1 != nil do
        temp.next = ListNode.new(l1.val)
        l1 = l1.next
        temp = temp.next
    end
    while l2 != nil do
        temp.next = ListNode.new(l2.val)
        l2= l2.next
        temp = temp.next
    end
    
    return result.next
end