# Given a list, rotate the list to the right by k places, where k is non-negative.

# For example:

# Given 1->2->3->4->5->NULL and k = 2,
# return 4->5->1->2->3->NULL.

# Definition for singly-linked list.
class ListNode
  attr_accessor :next,:data
	def initialize(data)
     @data = data
     @next=nil
	end
end

class Solution
    # param a : head node of linked list
    # param b : integer
    # return the head node in the linked list
    def rotateRight(a, b)
        rotate_list(a, b)
    end
end

def rotate_list(head, n)
  return unless head
  return head if n.zero?
  fast = head
  size = 0
  while fast
    size +=1
    fast = fast.next
  end
  fast = head
  n = n%size
  n.times do
    fast = fast.next
    break unless fast
  end
  
  return head if n.zero?

  return head unless fast

  slow = head
  prev_slow = slow
  while fast
    prev_slow = slow
    slow = slow.next
    fast = fast.next
  end
  prev_slow.next = nil

  connected_node = slow
  connected_node = connected_node.next while connected_node.next
  connected_node.next = head
  slow
end