require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'destroying existing gnomes...'
Booking.destroy_all
Gnome.destroy_all

puts 'creating 17 gnomes...'
url_array = ['https://res.cloudinary.com/dkyjwccm3/image/upload/v1622481234/Gnomes/gnomes/brigitta-schneiter-_SB32j-cVrU-unsplash_x2ujk8.jpg','https://res.cloudinary.com/dkyjwccm3/image/upload/v1622481233/Gnomes/gnomes/lyndse-ballew-JzHM9BI8edw-unsplash_azzsv0.jpg','https://res.cloudinary.com/dkyjwccm3/image/upload/v1622481233/Gnomes/gnomes/dorota-dylka-X2l7vcdWZjc-unsplash_copy_qmpkm4.jpg','https://res.cloudinary.com/dkyjwccm3/image/upload/v1622481233/Gnomes/gnomes/craig-mclachlan-wyBNsKAVlKQ-unsplash_jcq2lr.jpg','https://res.cloudinary.com/dkyjwccm3/image/upload/v1622481233/Gnomes/gnomes/sarah-mae-TZyEMoSB9Tw-unsplash_dzfabq.jpg','https://res.cloudinary.com/dkyjwccm3/image/upload/v1622481232/Gnomes/gnomes/markus-spiske-6WBJjtpiU0Y-unsplash_khupqi.jpg','https://res.cloudinary.com/dkyjwccm3/image/upload/v1622481232/Gnomes/gnomes/iamcristian-80z0vjTsDYA-unsplash_rxrimt.jpg','https://res.cloudinary.com/dkyjwccm3/image/upload/v1622481232/Gnomes/gnomes/miikka-luotio-pCObf6fEmeg-unsplash_m78pzf.jpg','https://res.cloudinary.com/dkyjwccm3/image/upload/v1622481232/Gnomes/gnomes/john-bussell-qPKIavVhb6I-unsplash_srki10.jpg','https://res.cloudinary.com/dkyjwccm3/image/upload/v1622481231/Gnomes/gnomes/donna-g-55ckSAz--kI-unsplash_lpzorj.jpg','https://res.cloudinary.com/dkyjwccm3/image/upload/v1622481231/Gnomes/gnomes/colin-osborne-ScWl_m8upho-unsplash_yzdrwc.jpg','https://res.cloudinary.com/dkyjwccm3/image/upload/v1622481231/Gnomes/gnomes/colin-osborne-6uw69i0q6lA-unsplash_p6ptty.jpg','https://res.cloudinary.com/dkyjwccm3/image/upload/v1622481231/Gnomes/gnomes/markus-spiske-6WBJjtpiU0Y-unsplash_copy_cmbhsb.jpg','https://res.cloudinary.com/dkyjwccm3/image/upload/v1622481231/Gnomes/gnomes/pierre-bamin-YYFi80l9VOg-unsplash_bmbfcy.jpg','https://res.cloudinary.com/dkyjwccm3/image/upload/v1622481231/Gnomes/gnomes/dorota-dylka-Y6nFvt1ebyw-unsplash_oawr1f.jpg','https://res.cloudinary.com/dkyjwccm3/image/upload/v1622481230/Gnomes/gnomes/dorota-dylka-X2l7vcdWZjc-unsplash_lo2v06.jpg','https://res.cloudinary.com/dkyjwccm3/image/upload/v1622481230/Gnomes/gnomes/apho-xXs6qC7yBao-unsplash_qhzf9g.jpg']
addresses = ['Rua das Flores, Cascais, Portugal', 'Rua dos Pinheiros, Lisboa, Portugal', 'Avenida da Republica, Lisboa, Portugal', 'Avenida Sidonio Pais, Lisboa, Portugal', 'Avenida 24 de Julho, Lisboa, Portugal', 'Praca da Republica, Coimbra, Portugal', 'Braga, Portugal', 'Rua 25 de Abril, Grandola, Portugal', 'Rua da Pascoa, Lisboa, Portugal', 'Avenida Sidonio Pais, Sintra, Portugal', 'Sao Lourenco, 9580-114, Vila do Porto, Santa Maria, Acores', 'Rua Joao Pereira da Rosa, Cascais, Portugal', 'Avenida da Boavista, Porto, Portugal', 'Avenida dos Aliados, Porto, Portugal', 'Avenida Engenheiro Arantes e Oliveira, Evora, Portugal', 'Rua Alexandre Herculano, Estremoz, Portugal', 'Rua Dom Sancho I, Portimao, Portugal']
url_array.each_with_index do |url,index|
  gnome = Gnome.create!(
    name: Faker::Movies::LordOfTheRings.character,
    power: Faker::Superhero.power,
    description: Faker::GreekPhilosophers.quote,
    price: Faker::Number.within(range: 20.0..500.0).round(2),
    address: addresses[index]
  )
  file = URI.open(url)
  gnome.photo.attach(io: file, filename: url, content_type: 'image/jpg')
  gnome.save
end

puts 'added gnomes complete'
