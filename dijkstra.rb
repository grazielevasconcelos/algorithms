class Dijkstra
  def self.main
    graph = {}
    graph[:start] = {}
    graph[:start][:a] = 5
    graph[:start][:b] = 2

    graph[:a] = {}
    graph[:a][:c] = 4
    graph[:a][:d] = 2

    graph[:b] = {}
    graph[:b][:a] = 8
    graph[:b][:d] = 7

    graph[:c] = {}
    graph[:c][:d] = 6
    graph[:c][:end] = 3

    graph[:d] = {}
    graph[:d][:end] = 1

    costs = {}
    costs[:a] = 5
    costs[:b] = 2
    costs[:c] = Float::INFINITY
    costs[:d] = Float::INFINITY
    costs[:end] = Float::INFINITY

    parents = {}
    parents[:a] = :start
    parents[:b] = :start
    parents[:c] = :b
    parents[:d] = nil
    parents[:end] = nil

    @processed = []

    node = find_lowest_cost_node(costs)

    until node.nil?
      cost = costs[node]

      neighbors = graph[node]

      neighbors&.keys&.each do |n|
        new_cost = cost + neighbors[n]

        if costs[n] > new_cost
          costs[n] = new_cost
          parents[n] = node
        end
      end

      @processed << node

      node = find_lowest_cost_node(costs)
    end

    puts "Cost from the start to each node:"
    puts costs
    puts parents
    puts graph
  end

  def self.find_lowest_cost_node(costs)
    lowest_cost = Float::INFINITY
    lowest_cost_node = nil

    costs.each do |node, cost|
      puts " node : #{node}"
      puts " cost : #{cost}"
      if cost < lowest_cost && !@processed.member?(node)
        lowest_cost = cost
        lowest_cost_node = node
      end 
    end

    puts " lowest_cost_node : #{lowest_cost_node}"
    lowest_cost_node
  end
end

Dijkstra.main
