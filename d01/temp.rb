require 'pry'

hash = { "results"=> [ {"Jurassic Park"=> 9}, {"Superman"=> 2}, {"Inception"=> 8} ]}

binding.pry



#using pry looks liek this:

[1] pry(main)> hash
=> {"results"=>[{"Jurassic Park"=>9}, {"Superman"=>2}, {"Inception"=>8}]}
[2] pry(main)> hash["results"]
=> [{"Jurassic Park"=>9}, {"Superman"=>2}, {"Inception"=>8}]
[3] pry(main)> hash["results"][0]
=> {"Jurassic Park"=>9}
[4] pry(main)> hash["results"][1]
=> {"Superman"=>2}
[5] pry(main)> hash["results"][2]
=> {"Inception"=>8}
[6] pry(main)>


hash['results'][0].keys
=> ["Jurassic Park"]
