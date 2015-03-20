lions = [{name: "Isabel", location: "California", favorite_food: "herring"},
         {name: "Ralph", location: "Sea World", favorite_food: "salmon"},
         {name: "Tito", location: "Alaska", favorite_food: "anchovies"},
         {name: "Lisa", location: "Russia", favorite_food: "squid" }]

lions.each do |lion|
  SeaLion.create(lion)
end
