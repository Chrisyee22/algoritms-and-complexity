require_relative 'city'

def nearest_neighbor(graph_of_cities, current_city)
  while !current_city.visited
    neighbor_cities = current_city.neighbors[0]
    distance_to_next_city = neighbor_cities[1]

      current_city.neighbors.each do |current_neighbor|
        current_neighbor_city = current_neighbor[0]
        distance_to_current_neighbor = current_neighbor[1]

        if distance_to_current_neighbor < distance_to_next_city && !current_neighbor_city.visited
          distance_to_next_city = current_neighbor
        end
      end
      current_city.visited = true
      if !neighbor_cities[0].visited
       current_city = graph_of_cities[neighbor_cities[0].name]
      end
  end
  current_city
end
