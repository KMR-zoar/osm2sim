require './cblxy.rb'
require './dms2d3.rb'
require 'rexml/document'

doc = REXML::Document.new(open(ARGV[0]))

#}
i = 0

head = <<EOS
G00,03,OSMトレースデータ,
Z00, /* 座標データ */,
A00,
EOS

foot = 'A99,'

puts head

doc.elements.each('osm/node') {|element|
   id = element.attributes['id'].to_s
   lat = element.attributes['lat']
   lon = element.attributes['lon']
   lat = ddd2dms(lat).slice(0..9).to_f
   lon = ddd2dms(lon).slice(0..10).to_f
   xy = blxy(lat,lon,9)
   i = i + 1
   puts  'A01,' + i.to_s + ',' + id + ',' + xy[0].to_s + ',' + xy[1].to_s
}

puts foot + "\n"
