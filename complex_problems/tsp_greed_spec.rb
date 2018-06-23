require_relative 'city'
require_relative 'tsp_greed'

RSpec.describe "tsp_greed" do
  let(:denver) {City.new("Denver")}
  let(:minneapolis) {City.new("Minneapolis")}
  let(:seattle) {City.new("Seattle")}
  let(:chicago) {City.new("Chicago")}
  let(:los_angeles) {City.new("Los Angeles")}
  let(:ft_lauderdale) {City.new("Ft. Lauderdale")}
  let(:new_york) {City.new("New York")}
  let(:new_orleans) {City.new("New Orleans")}
  let(:charlotte) {City.new("Charlotte")}


  let(:city_list) { Hash.new }


  before do
    denver.add_neighbors([[minneapolis, 915], [chicago, 1004], [los_angeles, 1016]])
    minneapolis.add_neighbors ([[denver, 915], [chicago, 408]])
    chicago.add_neighbors ([[minneapolis, 408], [new_york, 796]])
    new_york.add_neighbors ([[charlotte, 644],[chicago, 408]])
    charlotte.add_neighbors ([[new_york, 644], [ft_lauderdale, 710], [new_orleans, 714]])
    ft_lauderdale.add_neighbors ([[charlotte, 710], [new_orleans, 842]])
    new_orleans.add_neighbors ([[chicago, 925], [denver,1300]])
    los_angeles.add_neighbors ([[los_angeles, 1016], [seattle, 1137]])
    seattle.add_neighbors ([[denver, 1309], [los_angeles, 1016]])

    city_list["Denver"] = denver
    city_list["Minneapolis"] = minneapolis
    city_list["Seattle"] = seattle
    city_list["Chicago"] = chicago
    city_list["Los Angeles"] = los_angeles
    city_list["Ft. Lauderdale"] = ft_lauderdale
    city_list["New York"] = new_york
    city_list["New Orleans"] = new_orleans
    city_list["Charlotte"] = charlotte
  end

  describe "#nearest_neighbor" do
    it "returns Minneapolis as the nearest city from Denver" do
       expect(nearest_neighbor(city_list, denver)).to eq(minneapolis)
    end

    it "returns Chicago as the nearest city from New Orleans"do
      expect(nearest_neighbor(city_list, new_orleans)).to eq(denver)
    end

    it "returns New York as the nearest city from Charlotte" do
      expect(nearest_neighbor(city_list, charlotte)).to eq(new_york)
    end

    it "return Los Angeles as the nearest ciyt from Seattle" do
      expect(nearest_neighbor(city_list, seattle)).to eq(minneapolis)
    end
  end
end
