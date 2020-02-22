class TreeNode
  attr_reader :key, :value
  attr_accessor :left, :right

   def initialize(key, val)
    @key = key
    @value = val
    @left = nil
    @right = nil
   end
end

class Tree
  attr_reader :root
  def initialize
    @root = nil
  end

  # Time Complexity: 
  # Space Complexity: 
  # def add(key, value)
  #   if @root.nil?
  #     @root = TreeNode.new(key, value)
  #   else
  #     current = @root
  #     while true
  #       if key < current.key
  #         if !current.left.nil?
  #         current = current.left
  #         else 
  #           current.left = TreeNode.new(key, value)
  #           return
  #         end
  #       else
  #         if !current.right.nil?
  #           current = current.right
  #         else
  #           current.right = TreeNode.new(key,value)
  #           return
  #         end
  #       end
  #     end
  #   end
  # end

  def add_helper(current_node, key, value)
    return TreeNode.new(key, value) if current_node.nil?

    if key < current_node.key
      current_node.left = add_helper(current_node.left, key, value)
    else
      current_node.right = add_helper(current_node.right, key, value)
    end
    return current_node
  end
    
  def add(key, value)
    @root = add_helper(@root, key, value)
  end





  # Time Complexity: 
  # Space Complexity: 
  def find(key)
    if current.node.nil?
     return TreeNode.new(key,value)
    elsif current.node == key
      return true
    end
  

  
  

  end
 
      
   
  


    


  # Time Complexity: 
  # Space Complexity: 
  def inorder
    return list if current_node.nil?
  end
    
  def inorder_helper(current_node, list)

    inorder_helper(current_node.left,list)
    list << { key: current_node.key, value: current_node.value }
    inorder_helper(current_node.right, list)
    return list
  end

  # Time Complexity: 
  # Space Complexity: 
  def preorder
    raise NotImplementedError
  end

  # Time Complexity: 
  # Space Complexity: 
  def postorder
    raise NotImplementedError
  end

  # Time Complexity: 
  # Space Complexity: 
  def height
    raise NotImplementedError
  end

  # Optional Method
  # Time Complexity: 
  # Space Complexity: 
  def bfs
    raise NotImplementedError
  end

  # Useful for printing
  def to_s
    return "#{self.inorder}"
  end
end
