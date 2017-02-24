Quantity.destroy_all
Request.destroy_all
Breed.destroy_all

breeds = []
  doc = Nokogiri::HTML(open("http://dogtime.com/dog-breeds"))
      doc.search('.post-title').each do |element|
        breeds << element.text()
      end

breeds.each do |breed|
  Breed.create({name: breed})
end

i1 = Breed.create!(name: breeds.sample)
i2 = Breed.create!(name: breeds.sample)
i3 = Breed.create!(name: breeds.sample)
i4 = Breed.create!(name: breeds.sample)
i5 = Breed.create!(name: breeds.sample)
i6 = Breed.create!(name: breeds.sample)
i7 = Breed.create!(name: breeds.sample)
i8 = Breed.create!(name: breeds.sample)

c1 = Request.new(name: 'Constance', description: "I was wonderign if I could borrow many dogs for a walk", date: DateTime.new)
c1.quantities << Quantity.new(number: 5, breed: i1)
c1.quantities << Quantity.new(number: 6, breed: i3)
c1.quantities << Quantity.new(number: 10, breed: i8)
c1.save!

c2 = Request.new(name: 'Teikiki', description: "I was wonderign if I could borrow many dogs for a walk", date: DateTime.new)
c2.quantities << Quantity.new(number: 5, breed: i8)
c2.quantities << Quantity.new(number: 3, breed: i5)
c2.quantities << Quantity.new(number: 1, breed: i4)
c2.save!

c3 = Request.new(name: 'Marc', description: "I was wonderign if I could borrow many dogs for a walk", date: DateTime.new)
c3.quantities << Quantity.new(number: 10, breed: i3)
c3.quantities << Quantity.new(number: 3, breed: i7)
c3.quantities << Quantity.new(number: 4, breed: i2)
c3.save!

c4 = Request.new(name: 'Yann', description: "I was wonderign if I could borrow many dogs for a walk", date: DateTime.new)
c4.quantities.new(number: 5, breed: i3)
c4.quantities.new(number: 6, breed: i3)
c4.quantities.new(number: 7, breed: i3)
c4.save!
