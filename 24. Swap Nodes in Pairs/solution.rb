# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def swap_pairs(head)
    temp = ListNode.new
    result = swap(head, result)
    
    return result
end

def swap(node, result)
    if node && node.next != nil
        result = ListNode.new(node.next.val, ListNode.new(node.val))
        result.next.next = swap(node.next.next, result.next.next)
    elsif node != nil
        result = ListNode.new(node.val)
    end
    return result
end