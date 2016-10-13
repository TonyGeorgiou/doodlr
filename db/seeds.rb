# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
a1 = Artist.create :name => 'Guy One', :location => 'Sydney', :dob => '1970/11/20', :email => 'guy@one.com', :password => 'chicken'

a2 = Artist.create :name => 'Sophie Smith', :location => 'Melbourne', :dob => '1990/1/25', :email => 'sophie@cold.com', :password => 'chicken'

a3 = Artist.create :name => 'John Styne', :location => 'London', :dob => '1998/9/7', :email => 'john@cold.com', :password => 'chicken'

a4 = Artist.create :name => 'Jenny Long', :location => 'Nairobi', :dob => '1960/8/23', :email => 'jenny@one.com', :password => 'chicken'

a5 = Artist.create :name => 'Barry Lynn', :location => 'New York', :dob => '2001/7/30', :email => 'barry@cold.com', :password => 'chicken'

a6 = Artist.create :name => 'Sue Jones', :location => 'Paris', :dob => '1979/3/29', :email => 'sue@one.com', :password => 'chicken'

# ----------------------------------------------------------------------------------------------

Doodle.destroy_all
d1 = Doodle.create :title => 'Psychedelic Vision #1', :caption => 'It seemed so real', :url => 'http://drawingimage.com/files/1/Psychedelic-Art-Photo-Drawing.jpg'

d2 = Doodle.create :title => 'Psychedelic Vision #1', :caption => 'It seemed so real', :url =>'http://godfreyl.ism-online.org/files/2014/01/Blobs1.jpg'


d3 = Doodle.create :title => 'Psychedelic Vision #1', :caption => 'It seemed so real', :url =>'https://i.ytimg.com/vi/jKPSJrsE2I8/maxresdefault.jpg'


d4 = Doodle.create :title => 'Psychedelic Vision #1', :caption => 'It seemed so real', :url =>'https://s-media-cache-ak0.pinimg.com/236x/28/00/98/2800985317aa814665716a700395741c.jpg'


d5 = Doodle.create :title => 'Psychedelic Vision #1', :caption => 'It seemed so real', :url =>'https://i.ytimg.com/vi/e4N882MPTPQ/maxresdefault.jpg'


d6 = Doodle.create :title => 'Psychedelic Vision #1', :caption => 'It seemed so real', :url =>'https://thumbs.dreamstime.com/x/star-sketchy-notebook-doodles-lined-paper-11011850.jpg'


d7 = Doodle.create :title => 'Psychedelic Vision #1', :caption => 'It seemed so real', :url =>'https://www.google.com/logos/doodles/2014/doodle-4-google-winner-ireland-6225298102157312-hp2x.jpg'


d8 = Doodle.create :title => 'Psychedelic Vision #1', :caption => 'It seemed so real', :url =>'http://cdn.theatlantic.com/static/coma/images/issues/200609/doodles/doodling_away_psweb.jpg'


d9 = Doodle.create :title => 'Psychedelic Vision #1', :caption => 'It seemed so real', :url =>'http://cdn.mos.cms.futurecdn.net/2d58b9faaf30a41afe498c0381d3f801.jpg'


d10 = Doodle.create :title => 'Psychedelic Vision #1', :caption => 'It seemed so real', :url =>'https://thumb1.shutterstock.com/display_pic_with_logo/1409680/246778888/stock-vector-valentines-day-kiss-love-doodle-vector-246778888.jpg'


d11 = Doodle.create :title => 'Psychedelic Vision #1', :caption => 'It seemed so real', :url =>'http://static.nerdstargamer.net/doodles/gallery/dang-doodle-smug-bug.png'


d12 = Doodle.create :title => 'Psychedelic Vision #1', :caption => 'It seemed so real', :url =>'http://static.qbrushes.net/downloads/215-2221/images/large/1975-Flower-Doodles.jpg'


d13 = Doodle.create :title => 'Psychedelic Vision #1', :caption => 'It seemed so real', :url =>'https://thumb9.shutterstock.com/display_pic_with_logo/221395/221395,1295804889,2/stock-vector-love-doodles-69582940.jpg'


d14 = Doodle.create :title => 'Psychedelic Vision #1', :caption => 'It seemed so real', :url =>'http://cdn.theatlantic.com/static/coma/images/issues/200609/doodles/internal_security_psweb.jpg'


d15 = Doodle.create :title => 'Psychedelic Vision #1', :caption => 'It seemed so real', :url =>'http://cdn.theatlantic.com/static/coma/images/issues/200609/doodles/internal_security_psweb.jpg'


a1.doodles << d1 << d2 << d3
a2.doodles << d4 << d5 << d6
a3.doodles << d7 << d8 << d9
a4.doodles << d10 << d11
a5.doodles << d12 << d13
a6.doodles << d14 << d15
