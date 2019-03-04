# Definition for a  binary tree node
class TreeNode
    attr_accessor :left,:right,:data
    def initialize(data)
        @data = data
        @left = nil
        @right = nil
    end
end
class Solution
    # @param a : root node of tree
    # @return an array of integers
    def inorderTraversal(root)
    return [] unless root
    
    node = root
    stack = []
    ans = []
    while(node || !stack.empty?)
        while(node)
            stack << node
            node = node.left
        end
        node = stack.pop
        ans << node.data
        node = node.right
    end
    ans

    end
end