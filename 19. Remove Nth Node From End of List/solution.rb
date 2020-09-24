# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
    temp = ListNode.new
    temp.next = head
    first = second = temp
    i = 1
    
    # Ahead node
    while i <= n + 1 do
        first = first.next
        i += 1
    end
    
    # Both nodes start
    while first != nil do
        first = first.next
        second = second.next
    end
    
    # Target node
    second.next = second.next.next
    
    return temp.next
end