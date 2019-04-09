puts 'Cleaning database...'
User.destroy_all

puts 'Creating users...'
capucine = User.create!(nickname: 'Capucine', email: 'capucine@mail.com', password: '123456')
cecile   = User.create!(nickname: 'Cecile',   email: 'cecile@mail.com',   password: '123456')
claire   = User.create!(nickname: 'Claire',   email: 'claire@mail.com',   password: '123456')
feiko    = User.create!(nickname: 'Feiko',    email: 'feiko@mail.com',    password: '123456')
jad      = User.create!(nickname: 'Jad',      email: 'jad@mail.com',      password: '123456')
nicolas  = User.create!(nickname: 'Nicolas',  email: 'nicolas@mail.com',  password: '123456')
nicole   = User.create!(nickname: 'Nicole',   email: 'nicole@mail.com',   password: '123456')
pierre   = User.create!(nickname: 'Pierre',   email: 'pierre@mail.com',   password: '123456')

puts 'Creating plants...'
# LIVING ROOM
Plant.create!(
  user: jad,
  name: 'Skinny',
  age_in_months: 10,
  size: :tall,
  room: 'living-room',
  photo_url: "https://i.pinimg.com/originals/a4/6c/20/a46c20e02baec84234f05f3e6e902ce0.jpg",
  care_moments: [
    CareMoment.new(date: Date.today - 2.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 8.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 12.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: jad,
  name: 'Jake',
  age_in_months: 13,
  size: :tall,
  room: 'living-room',
  photo_url: "https://static1.squarespace.com/static/5149fd3ee4b0896b36334458/t/533f0989e4b02233d742dfc2/1396640141566/",
  care_moments: [
    CareMoment.new(date: Date.today - 14.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: nicolas,
  name: 'Hairy',
  age_in_months: 3,
  size: :medium,
  room: 'living-room',
  photo_url: "https://images.pexels.com/photos/260046/pexels-photo-260046.jpeg",
  care_moments: [
    CareMoment.new(date: Date.today - 2.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 5.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: nicolas,
  name: 'Oliver',
  age_in_months: 1,
  size: :tall,
  room: 'living-room',
  photo_url: "https://i.pinimg.com/originals/12/9a/77/129a7733bb7a05cb0aea95f62b1aab4b.jpg",
  care_moments: [
    CareMoment.new(date: Date.today - 7.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: nicole,
  name: 'Elf',
  age_in_months: 7,
  size: :tall,
  room: 'living-room',
  photo_url: "https://i.pinimg.com/originals/7b/9f/fd/7b9ffd7412229e707ef7a3ca3355e036.jpg",
  care_moments: [
    CareMoment.new(date: Date.today, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 3.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: nicole,
  name: 'Bob',
  age_in_months: 2,
  size: :medium,
  room: 'living-room',
  photo_url: "https://i.pinimg.com/originals/02/36/b3/0236b35fce13943680b7f26c4a8e47fe.jpg",
  care_moments: [
    CareMoment.new(date: Date.today - 3.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: feiko,
  name: 'Janet',
  age_in_months: 1,
  size: :small,
  room: 'living-room',
  photo_url: "https://images.pexels.com/photos/1005058/pexels-photo-1005058.jpeg",
  care_moments: [
    CareMoment.new(date: Date.today - 1.month, code: :water, points: CareMoment::MOMENTS[:water][:points])
  ]
)
Plant.create!(
  user: feiko,
  name: 'Bobby',
  age_in_months: 1,
  size: :small,
  room: 'living-room',
  photo_url: "https://www.givingplants.com/media/catalog/product/cache/6/image/9df78eab33525d08d6e5fb8d27136e95/g/p/gp4-lb19-grnmtn.jpg",
  care_moments: [
    CareMoment.new(date: Date.today, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 7.days, code: :water, points: CareMoment::MOMENTS[:water][:points])
  ]
)
Plant.create!(
  user: cecile,
  name: 'Albert',
  age_in_months: 3,
  size: :medium,
  room: 'living-room',
  photo_url: "https://www.melyssagriffin.com/wp-content/uploads/2014/10/plants-home-decor-9.jpg",
  care_moments: [
    CareMoment.new(date: Date.today, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 4.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 7.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 7.days, code: :weed, points: CareMoment::MOMENTS[:weed][:points]),
    CareMoment.new(date: Date.today - 10.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: cecile,
  name: 'Elisabeth',
  age_in_months: 3,
  size: :tall,
  room: 'living-room',
  photo_url: "https://i.pinimg.com/originals/e2/06/5d/e2065d88f1d3be53dcd7b48df2e05c50.jpg",
  care_moments: [
    CareMoment.new(date: Date.today, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 4.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 7.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 10.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 10.days, code: :weed, points: CareMoment::MOMENTS[:weed][:points]),
  ]
)
Plant.create!(
  user: cecile,
  name: 'Gina',
  age_in_months: 4,
  size: :small,
  room: 'living-room',
  photo_url: "https://images.crateandbarrel.com/is/image/Crate/PottedJadePlantSHF16",
  care_moments: [
    CareMoment.new(date: Date.today, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 4.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 4.days, code: :weed, points: CareMoment::MOMENTS[:weed][:points]),
    CareMoment.new(date: Date.today - 7.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 10.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: pierre,
  name: 'Ron',
  age_in_months: 1,
  size: :tall,
  room: 'living-room',
  photo_url: "https://i.pinimg.com/originals/33/f3/39/33f33922904855cd20675a613c0e5f4a.png",
  care_moments: [
    CareMoment.new(date: Date.today - 21.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: pierre,
  name: 'Louise',
  age_in_months: 5,
  size: :medium,
  room: 'living-room',
  photo_url: "https://hips.hearstapps.com/ghk.h-cdn.co/assets/cm/15/11/480x552/54ff4081834bd-snake-plant-xln.jpg",
  care_moments: [
    CareMoment.new(date: Date.today - 21.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: capucine,
  name: 'Gabin',
  age_in_months: 10,
  size: :tall,
  room: 'living-room',
  photo_url: "http://www.delightfull.eu/inspirations//wp-content/uploads/2016/11/10-happy-living-room-ideas-with-plants-2.jpg",
  care_moments: [
    CareMoment.new(date: Date.today - 2.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 5.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: claire,
  name: 'Ginger',
  age_in_months: 9,
  size: :tall,
  room: 'living-room',
  photo_url: "http://foros.micasarevista.com/var/decoracion/storage/images/mi-casa/ideas/plantas-de-interior/palmeras/180188-1-esl-ES/palmeras_galeria_landscape.jpg",
  care_moments: [
    CareMoment.new(date: Date.today - 1.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 4.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 7.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)

# BEDROOM
Plant.create!(
  user: cecile,
  name: 'Olivia',
  age_in_months: 5,
  size: :medium,
  room: 'bedroom',
  photo_url: "http://estiloescandinavo.com/wp-content/uploads/2017/05/dormitorios-minimalistas-01.jpg",
  care_moments: [
    CareMoment.new(date: Date.today, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today, code: :weed, points: CareMoment::MOMENTS[:weed][:points]),
    CareMoment.new(date: Date.today - 4.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 7.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 10.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: cecile,
  name: 'Cookie',
  age_in_months: 2,
  size: :small,
  room: 'bedroom',
  photo_url: "http://www.dreams.co.uk/sleep-matters-club/wp-content/uploads/2017/03/aloe-vera-plant.jpg",
  care_moments: [
    CareMoment.new(date: Date.today, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 4.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 7.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 10.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: jad,
  name: 'James',
  age_in_months: 6,
  size: :small,
  room: 'bedroom',
  photo_url: "https://i.dailymail.co.uk/i/pix/2017/10/23/16/459AC18D00000578-5009063-image-a-108_1508772827000.jpg",
  care_moments: [
    CareMoment.new(date: Date.today - 2.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 8.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: claire,
  name: 'Harold',
  age_in_months: 2,
  size: :tall,
  room: 'bedroom',
  photo_url: "https://cdn.gearpatrol.com/wp-content/uploads/2015/02/House-Plants-Gear-Patrol-Lead-2.jpg",
  care_moments: [
    CareMoment.new(date: Date.today - 1.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 4.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 7.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: feiko,
  name: 'Joseph',
  age_in_months: 6,
  size: :small,
  room: 'bedroom',
  photo_url: "http://blog.casper.com/wp-content/uploads/2015/07/TheSill_Succulents_ZZPlant.jpg",
  care_moments: [
    CareMoment.new(date: Date.today - 1.month, code: :water, points: CareMoment::MOMENTS[:water][:points])
  ]
)
Plant.create!(
  user: capucine,
  name: 'Chester',
  age_in_months: 2,
  size: :medium,
  room: 'bedroom',
  photo_url: "http://dritare.net/wp-content/uploads/2018/01/20-2.jpeg",
  care_moments: [
    CareMoment.new(date: Date.today - 2.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 5.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: nicolas,
  name: 'Carter',
  age_in_months: 8,
  size: :medium,
  room: 'bedroom',
  photo_url: "https://cdn11.bigcommerce.com/s-dl98qkiq9f/images/stencil/original/uploaded_images/2018augarticle-1.jpg",
  care_moments: [
    CareMoment.new(date: Date.today - 3.weeks, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: pierre,
  name: 'Stick',
  age_in_months: 5,
  size: :small,
  room: 'bedroom',
  photo_url: "http://www.dietoflife.com/wp-content/uploads/2016/08/Snake-Plants-1.jpg",
  care_moments: [
    CareMoment.new(date: Date.today - 21.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)

# ENTRANCE
Plant.create!(
  user: capucine,
  name: 'Paul',
  age_in_months: 2,
  size: :medium,
  room: 'entrance',
  photo_url: "http://cdn.junglecreations.com/wp/junglecms/2017/10/1-221.jpg",
  care_moments: [
    CareMoment.new(date: Date.today - 2.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: capucine,
  name: 'Jasper',
  age_in_months: 2,
  size: :small,
  room: 'entrance',
  photo_url: "https://i.pinimg.com/originals/c3/1c/94/c31c9424f9f0236d5683cae29ca69b02.jpg",
  care_moments: [
    CareMoment.new(date: Date.today - 2.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 5.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 8.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: claire,
  name: 'Sonia',
  age_in_months: 3,
  size: :small,
  room: 'entrance',
  photo_url: "https://i.ebayimg.com/images/g/EzUAAOSw-RFaZw33/s-l640.jpg",
  care_moments: [
    CareMoment.new(date: Date.today - 7.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: pierre,
  name: 'Joshephine',
  age_in_months: 13,
  size: :medium,
  room: 'entrance',
  photo_url: "https://media.architecturaldigest.com/photos/5a82fab7498fd76f3be3d4cc/master/w_768/indoor-trees-DracaenaMarginata_1.jpg",
  care_moments: [
    CareMoment.new(date: Date.today - 21.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: cecile,
  name: 'Cucumber',
  age_in_months: 4,
  size: :tall,
  room: 'entrance',
  photo_url: "https://i.pinimg.com/originals/6c/a2/3c/6ca23caed27deafb73cb5f161f9ace19.jpg",
  care_moments: [
    CareMoment.new(date: Date.today, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 4.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 7.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 10.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)

# OFFICE
Plant.create!(
  user: claire,
  name: 'Alex',
  age_in_months: 7,
  size: :medium,
  room: 'office',
  photo_url: "https://www.ambius.co.nz/static/i/officeplants/officeplants-gallery9.jpg",
  care_moments: [
    CareMoment.new(date: Date.today - 4.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: cecile,
  name: 'Tiny',
  age_in_months: 1,
  size: :small,
  room: 'office',
  photo_url: "https://cdn.gardenista.com/wp-content/uploads/2014/01/pothos-desk-lamp-via-the-sill.jpg",
  care_moments: [
    CareMoment.new(date: Date.today, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 4.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 7.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 10.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)

# BATHROOM
Plant.create!(
  user: nicolas,
  name: 'Jelly',
  age_in_months: 2,
  size: :medium,
  room: 'bathroom',
  photo_url: "https://i.pinimg.com/originals/3b/ce/79/3bce7930689e2630016811e7eac09497.jpg",
  care_moments: [
    CareMoment.new(date: Date.today - 2.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 5.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: nicolas,
  name: 'Green',
  age_in_months: 1,
  size: :small,
  room: 'bathroom',
  photo_url: "https://i.pinimg.com/736x/92/ea/8f/92ea8f263edf5c90901908f3a32d2bc0--fern-plant-lily-plant.jpg",
  care_moments: [
    CareMoment.new(date: Date.today - 2.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 5.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: nicole,
  name: 'Apricot',
  age_in_months: 7,
  size: :medium,
  room: 'bathroom',
  photo_url: "https://www.home-dzine.co.za/2018/feb/301.jpg",
  care_moments: [
    CareMoment.new(date: Date.today, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: cecile,
  name: 'Twin',
  age_in_months: 1,
  size: :small,
  room: 'bathroom',
  photo_url: "https://media.allure.com/photos/5af5b908cc7715489321f553/16:9/w_2560/shower-plants.jpg",
  care_moments: [
    CareMoment.new(date: Date.today, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 4.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 7.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 10.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: jad,
  name: 'Karmena',
  age_in_months: 3,
  size: :small,
  room: 'bathroom',
  photo_url: "https://hips.hearstapps.com/clv.h-cdn.co/assets/17/16/1492617682-gettyimages-184365511.jpg",
  care_moments: [
    CareMoment.new(date: Date.today - 2.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 8.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: claire,
  name: 'Tea',
  age_in_months: 1,
  size: :small,
  room: 'bathroom',
  photo_url: "https://cdn.gardenista.com/wp-content/uploads/2015/04/img/sub/uimg/02-2013/700_button-fern-in-antique-tea-tin.jpg",
  care_moments: [
    CareMoment.new(date: Date.today - 1.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)
Plant.create!(
  user: capucine,
  name: 'Dougie',
  age_in_months: 5,
  size: :medium,
  room: 'bathroom',
  photo_url: "https://www.homestolove.co.nz/wp-content/uploads/2017/08/bathroomPLANT.jpg",
  care_moments: [
    CareMoment.new(date: Date.today - 2.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 5.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
    CareMoment.new(date: Date.today - 8.days, code: :water, points: CareMoment::MOMENTS[:water][:points]),
  ]
)

puts 'Updating plants care points'
Plant.all.each do |plant|
  Plants::RecalculateCarePointsService.new(plant).call
end

puts 'Updating users care points / level'
User.all.each do |user|
  Users::RecalculateCarePointsService.new(user).call
  Users::RecalculateLevelService.new(user).call
end

puts 'Finished!'
