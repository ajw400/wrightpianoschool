# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database"

Paragraph.destroy_all
Teacher.destroy_all
Degree.destroy_all

teachers_data =
[{
  first_name: "Andrew",
  last_name: "Wright",
  phone: "+31639591941",
  email: "prestoassai@hotmail.com",
  location: "Den Haag, Voorburg, Rijsijk, Wassenaar",
  hour_fee: 48,
  in_home_fee: 7
}]

paragraphs_data = [
[{
  content: "Andrew has been teaching piano for more than 10 years. He has served on the faculty of the Thurman School of Music in Dallas and has given masterclasses at universities and conservatories in the Netherlands, United States and Italy. Andrew has a thriving teaching practice in the Hague where he personally teaches a class of students of all ages and all levels. His students have won prizes in competitions such as the Holland International Piano Competition (category A and B), Steinway Concours, and Prinses Christina Concours. In November 2015, his student Nathan Schaumann won first prize in his age category of the Young Pianist Foundation Competition, the most important piano competition in Holland, where he also won the contemporary music prize across all age categories."
},
{
  content: "Andrew is an internationally recognised pianist. Beginning with his orchestral debut with the State Orchestra in Michoacan, Mexico, Andrew has performed as soloist with orchestras in the United States, Mexico and the Netherlands and has performed in over a dozen radio and TV broadcasts. His many prizes include most recently the highest awarded prize at the 2012 Vienna International Piano Competition, and the first prize by unanimous vote of the jury at the 2011 San Daniele International Piano Meeting. Earlier prizes include first prize in the Duquesne Piano Competition, the Konrad Wolff – Ilse Bing Chamber Music Competition, the Francine Wallingford Competition, the Mu Phi Epsilon Phi Pi Competition and prizes from the Crescendo Music Awards, Prix Dominique and also a nomination for the prestigious Classical Fellowship of the American Pianists Association. Since moving to the Netherlands in 2009, he has kept a busy concert schedule performing in venues such as the Concertgebouw in Amsterdam, Anton Philipszaal in the Hague and the Concertgebouw Vereniging Nijmegen. His performances have been recorded for broadcast by AVRO, TV West, Radio West and Radio 4. In 2011 he was soloist with the Royal Conservatoire Orchestra for the Hague’s Liszt Festival. He has performed at some of the most prestigious festivals in North America, such as Banff, Music Academy of the West, the International Musical Arts Institute, Kent/Blossom, and the TCU-Van Cliburn Piano Festival, and the International Holland Music Sessions.
"
  },
{
  content: "Andrew completed his research training at the Orpheus Institute’s DocArtes program in 2013, and in 2016 he successfully defended his doctoral dissertation at Leiden University, where the title of PhD was conferred upon him. Apart from his own research activity, which occurs in and through his teaching and performing practice, Andrew is also involved with teaching research at the Royal Conservatoire of the Hague."
  }]
]

degrees_data = [
[{
  description: "PhD in Music: Piano and Organ",
  year: "2016",
  school: "Leiden University",
  notes: "DocArtes Program"
  },
{
  description: "Master of Arts: Piano",
  year: "2011",
  school: "The Royal Conservatoire of the Hague",
  },
{
  description: "Master of Music: Piano",
  year: "2009",
  school: "Southern Methodist University - Meadows School of the Arts",
  notes: "Merit Scholarship Recipient"
  },
{
  description: "Bachelor of Arts: Organ",
  year: "2016",
  school: "Codarts - Rotterdam",
  notes: "Minors: Church Music and Choral Conducting"
  },
{
  description: "Bachelor of Music: Piano",
  year: "2006",
  school: "Wichita State University",
  notes: "Magna cum laude, Wolff-Bing Chamber Music Scholar"
  }]
]

teachers_data.each_with_index do |data, i|
  teacher = Teacher.new(data)
  teacher.save!
  paragraphs_data[i].each do |p|
    t = Paragraph.new(p)
    t.save!
    t.teacher = teacher
    t.save!
  end
  degrees_data[i].each do |d|
    x = Degree.new(d)
    x.save!
    x.teacher = teacher
    x.save!
  end
end

