# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



(1..11).to_a.each do |n|
  (1..11).to_a.sample((3..9).to_a.sample).each do |j|
    Follow.create(follower_id: n, followed_id: j)
  end
end

User.create(
  username: "rossmorey",
  password: "password",
  first_name: "Ross",
  last_name: "Morey",
  user_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/c_scale,w_233/v1472752844/picture_fo4edt.jpg",
  about: "I like Ansel Adams photography.",
  city: "Belmont",
  state: "California",
  country: "United States"
)

User.create(
  username: "annemariemorey",
  password: "password",
  first_name: "Anne",
  last_name: "Morey",
  about: "I’d love to become a more proficient photographer. Studying great landscapes helps me do that.",
  city: "Belmont",
  state: "California",
  country: "United States",
  user_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473119301/Screen_Shot_2016-09-05_at_4.47.43_PM_mqt0ui.png"
)

User.create(
  username: "bradleycass",
  password: "password",
  first_name: "Bradley",
  last_name: "Cass",
  about: "Adventurer / Story Sharer / Dude w/ Camera.",
  city: "Pierce",
  state: "Utah",
  country: "United States",
  user_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473119182/83_aez2ti.jpg"
)

User.create(
  username: "krisburk",
  password: "password",
  first_name: "Kris",
  last_name: "Burk",
  about: "I’m an explorer, photographer, creative director, speaker, and author. I travel throughout the year to pursue the farthest expanses of Earth.",
  city: "San Luis Obisbo",
  state: "California",
  country: "United States",
  user_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473119169/84_uwlx11.jpg"
)

User.create(
  username: "aligreen",
  password: "password",
  first_name: "Ali",
  last_name: "Green",
  about: "I’m a mom, blogger, and photographer",
  city: "Fairfax",
  state: "Virginia",
  country: "United States",
  user_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473119786/27_k6ccdc.jpg"
)

User.create(
  username: "megkine",
  password: "password",
  first_name: "Meg",
  last_name: "Kine",
  about: "I feel in love with Ansel’s photography fifteen years ago",
  city: "Winnemuca",
  state: "Nevada",
  country: "United States",
  user_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473119169/36_bi6wth.jpg"
)

User.create(
  username: "shannonreid",
  password: "password",
  first_name: "Shannon",
  last_name: "Reid",
  about: "If I’m not taking photos, I’m rambling through the mountains.",
  city: "Bishop",
  state: "California",
  country: "United States",
  user_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473119169/21_m2lcii.jpg"
)

User.create(
  username: "timtollef",
  password: "password",
  first_name: "Tim",
  last_name: "Tollef",
  about: "Mountain Lover. Coffee, Pug, and Donut Nerd.",
  city: "Mammoth Lakes",
  state: "California",
  country: "United States",
  user_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473119182/22_tfvuk3.jpg"
)

User.create(
  username: "aballinger",
  password: "password",
  first_name: "Adrienne",
  last_name: "Ballinger",
  about: "I’m a huge photography nerd.",
  city: "Moab",
  state: "Utah",
  country: "United States",
  user_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473119169/64_ns6xpx.jpg"
)

User.create(
  username: "sanniemichaels",
  password: "password",
  first_name: "Sannie",
  last_name: "Michaels",
  about: "\"I'm resolving to just wing it and see what happens.\" -adventurer.",
  city: "Miami",
  state: "Florida",
  country: "United States",
  user_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473119169/23_nka5cd.jpg"
)

User.create(
  username: "guest",
  password: "password",
  first_name: "Guest",
  last_name: "User",
  user_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/c_scale,w_207/v1472753134/profile_qdein0.png"
)

Photo.create(
  user_id: 4,
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1472766649/ansel-adams-wilderness-1_1600_ewipxu.jpg",
  title: "Beautiful Mountains",
  description: "Wow -- so beautiful!",
  lat: 37.794095,
  lng: -119.198760
)

Photo.create(
  user_id: 1,
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1472768614/ansel-adams-2la6zy4_slv2wx.jpg",
  title: "Beautiful Bridge",
  description: "Wow -- so beautiful!",
  views: 3,
  lat: 37.743831,
  lng: -119.566638
)

Photo.create( title: "Inspiration Point",
  description: "This is an iconic Ansel Adams photograph! Such a killer shot.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082818/001_qotk1t.jpg",
  user_id: 1
)

Photo.create( title: "Horseshoe Point", description: "Panorama of mountains. River in foreground. Absolutely Beautiful",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082834/002_vangbr.jpg",
  user_id: 1
)

Photo.create( title: "Tetons", description: "Full view of mountains.  Great texture.  This is gorgeous.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082827/003_dsziaq.jpg",
  user_id: 1
)

Photo.create( title: "Maple Leaf and Bracken", description: "In this easily recognizable photograph by Ansel Adams photograph, we see a rare close up.  Taken from a trip to the Northeast.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082834/004_iu6h7l.jpg",
  user_id: 1
)

Photo.create( title: "Half Dome Winter", description: "Many believe Monolith to be the single most important photograph in Ansel's life work. It is with this image that he forever moved from being a good photographer to being an artist, for it is with Monolith that he discovered that a photograph could communicate all the drama and passion of his soul, that he need notbe confined to photographing reality, but could skew the tonal values of a print in some cases literally turning day to night.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082831/005_ospnnr.jpg",
  user_id: 1
)

Photo.create( title: "Tenaya Lake East", description: "Yosemite National Park, California negative c. 1946, print c. 1969.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082832/006_daqo5d.jpg",
  user_id: 1
)

Photo.create( title: "Storm Forming Above Banner Peak", description: "\"I made this photograph while on the annual Sierra Club outing in Sequoia National Park, one of the most spectacular regions of the Sierra....Many speak of this image as abstract,but I was not conscious of any such definition a the time....For photographic composition I think in terms of creating configurations out of chaos.\"",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082836/007_gdl9mh.jpg",
  user_id: 1
)

Photo.create( title: "Adventures in the Southwest", description: "You don't take a photograph, you make it.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082860/008_go6msf.jpg",
  user_id: 1
)

Photo.create( title: "Southwest Textures", description: "When words become unclear, I shall focus with photographs. When images become inadequate, I shall be content with silence.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082874/009_bgoz5l.jpg",
  user_id: 1
)

Photo.create( title: "Portrait", description: "There are no rules for good photographs, there are only good photographs.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082840/010_i2eomi.jpg",
  user_id: 1
)

Photo.create( title: "Manzanar Fields", description: "In 1943, Ansel Adams documented the Manzanar War Relocation Center in California and the Japanese-Americans interned there during World War II. For the first time, digital scans of both Adams's original negatives and his photographic prints appear side by side allowing viewers to see Adams's darkroom technique, in particular, how he cropped his prints.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082845/011_jxsi6g.jpg",
  user_id: 1
)

Photo.create( title: "Desert Mesas", description: "There are always two people in every picture: the photographer and the viewer.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082841/012_cwvcd2.jpg",
  user_id: 1
)

Photo.create( title: "Mt. Williamson from Manzanar", description: "\"It seldom rains in the Owens Valley, but when it does the huge clouds and curtains of rain over the mountain summits are spectacular.When the clouds and storms appear the skies and the cloud-shadows on the mountain bring everything to life,shapes and planes appear that were hitherto unseen...\"",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082839/013_wwgahe.jpg",
  user_id: 1
)

Photo.create( title: "Going to the Sun", description: "There is nothing worse than a sharp image of a fuzzy concept.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082845/014_q1f7ar.jpg",
  user_id: 1
)

Photo.create( title: "The Artist in Yosemite", description: "Sometimes I do get to places just when God's ready to have somebody click the shutter.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082844/015_usllyh.jpg",
  user_id: 1
)

Photo.create( title: "Glacier", description: "A good photograph is knowing where to stand.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082856/016_xp7wwk.jpg",
  user_id: 1
)

Photo.create( title: "Spring Flow into Lake Tenaya", description: "Yosemite National Park, California negative c. 1946, print c. 1969.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082844/017_do83ae.jpg",
  user_id: 1
)

Photo.create( title: "Lake McDonald", description: "In wisdom gathered over time I have found that every experience is a form of exploration.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082847/018_nm9vqk.jpg",
  user_id: 1
)

Photo.create( title: "Moonrise", description: "Moonrise, Hernandez, New Mexico.  Negative made 1941, gelatin-silver print made by the artist 1970s.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082852/019_kls1mx.jpg",
  user_id: 1
)

Photo.create( title: "Southwest Spires", description: "Mature and sophisticated composition, beautiful light and, of course, amazing landscapes.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082836/020_kyc0dr.jpg",
  user_id: 1
)


Photo.create( title: "Bubbs Creek", description: "Top-flight landscape photography requires a lot of time and patience…Adams shows his ability to cover those bases exceptionally well.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082853/021_lncwtk.jpg",
  user_id: 1
)

Photo.create( title: "Mirror Lake", description: "An image to sigh over. Mirror Lake is now a shallow pond.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082900/022_nkucez.jpg",
  user_id: 1
)

Photo.create( title: "Clark Range", description: "You don’t take a photograph, you make it. Full awareness of what makes a good photo is essential in taking great photographs. ",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082852/023_v8ljio.jpg",
  user_id: 2
)

Photo.create( title: "Rural Church", description: "Stunning. An unexpected image.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082856/024_za9kiz.jpg",
  user_id: 3
)

Photo.create( title: "Inspiration from Ansel", description: "His work is nothing short of divine. It must have been a pleasure to shoot,",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082873/025_uhzhs3.jpg",
  user_id: 3
)

Photo.create( title: "Dogwoods in Spring", description: "I don’t think I’ve seen better than this. When he moves into abstract presentation of natural surroundings, the work bounces off the page.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082860/026_qy3fb0.jpg",
  user_id: 3
)

Photo.create( title: "Foothills", description: "Beautiful landscape photography…best I’ve seen!",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082860/027_nzupi7.jpg",
  user_id: 3
)

Photo.create( title: "Mirror Lake Fall", description: "Ansel Adams wanted his photographs to stand out from the crowd. They certainly do.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082867/028_kbcmjc.png",
  user_id: 2
)

Photo.create( title: "Aspen Grove", description: "His compositions and angles are superb! I love it. It’s beautiful.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082862/029_ljhezf.jpg",
  user_id: 2
)

Photo.create( title: "Glacier National Park Eastern Peaks", description: "Wonderful…we can travel just with these photos.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082862/030_fsqwkc.jpg",
  user_id: 2
)


Photo.create( title: "Manzanar Gates and Barracks", description: "Ansel Adams said of his own work, \"All in all, I think this Manzanar Collection is an important historical document, and I trust it can be put to good use.\"",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082864/032_nbunpt.jpg",
  user_id: 2
)

Photo.create( title: "Sunrise Creek", description: "The Owens Valley, Eastern Sierra, California, negative 194 35, gelatin-silver print made by the artist 1970s.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082867/035_d9itbb.jpg",
  user_id: 2
)

Photo.create( title: "Manzanar Portrait Series Young Man", description: "Tom Kobayashi, Landscape (looking at camera).",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082873/036_wrzaei.jpg",
  user_id: 2
)

Photo.create( title: "Cypress Tree", description: "Technique and eye – great! No words for this… great.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082872/037_yccvem.jpg",
  user_id: 3
)

Photo.create( title: "Early Morning Fog", description: "Fantastic depth and composition. An inspiration.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082874/038_xtaa0v.jpg",
  user_id: 3
)

Photo.create( title: "Pebble Beach", description: "Nobody should have that much talent! Fascinating and inspiring!",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082879/039_n6eamj.jpg",
  user_id: 2
)

Photo.create( title: "Grand Canyon", description: "Beauty can be seen in all things, seeing and composing the beauty is what separates the snapshot from the photograph.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082879/040_qtsddw.jpg",
  user_id: 2
)

Photo.create( title: "Old Oak", description: "Negative made 1944, gelatin-silver print made by the artist c.1974.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082879/041_kelrcz.jpg",
  user_id: 2
)

Photo.create( title: "Teton Range", description: "It bears clear witness to that \"pointed awareness of the light\" which he experienced in the Teton Range.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082884/042_dt67bp.jpg",
  user_id: 11
)

Photo.create( title: "Close Up of Burl", description: "Adams realized that the two-dimensional, monotone nature of a black and white photographic image was in itself a radical departure from reality and needed no further embellishments.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082945/043_zdlxuj.jpg",
  user_id: 11
)

Photo.create( title: "Open Road West", description: "Adams insistence on \"straight\" photography had a revolutionary influence on attitudes in the world of photography.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082881/044_pnsjkn.jpg",
  user_id: 11
)

Photo.create( title: "Saguaro Cactus", description: "\"It seems so utterly naïve that landscape—not that of the pictorial school—is not considered of ‘social significance’ when it has a far more important bearing on the human race of any locale than excrescences called cities. By landscapes, I mean every physical aspect of a region—weather, soil, wildflowers, mountain peaks—and its effect on the psyche and physical appearance of the people.\"",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082883/045_vh1btg.jpg",
  user_id: 11
)

Photo.create( title: "Redwoods", description: "\"It is good for me to know that there is Ansel Adams loose somewhere in the world of ours.\"",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082882/046_dkfznh.jpg",
  user_id: 11
)

Photo.create( title: "Car and Church", description: "An unusual composition for Ansel Adams. This photographs shows how Alfred Stieglitz exerted a further clarifying influence on Adam’s artistic direction",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082885/047_vfotyk.jpg",
  user_id: 11
)

Photo.create( title: "Gem Lake", description: "Referring to Adams\' relationship to the wilderness, David Brower remarked: \"That Ansel Adams came to be recognized as one of the great photographers of this century is a tribute to the places that informed him.\"",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082891/048_ogvulh.jpg",
  user_id: 11
)

Photo.create( title: "Northern California After Rain", description: "If I saw something in my viewfinder that looked familiar to me, I would do something to shake it up.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082899/049_mlxeb9.png",
  user_id: 11
)

Photo.create( title: "Farmer’s Field", description: "During the 1920s and 1930s, Adams was involved with commercial photography. This image from California shows great depth and compassion.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082892/050_lda0dq.jpg",
  user_id: 11
)

Photo.create( title: "Bark", description: "This is an iconic Ansel Adams photograph! Such a killer shot",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082895/052_ls1tx8.jpg",
  user_id: 11
)

Photo.create( title: "Yosemite Falls", description: "Such a beautiful image.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082893/053_vqmq6p.jpg",
  user_id: 11
)

Photo.create( title: "Coastal View", description: "This is an iconic Ansel Adams photograph! Such a killer shot",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082926/054_azpvmp.jpg",
  user_id: 3
)

Photo.create( title: "Bristlecone Pine", description: "The pictures are extraordinarily fine and impressive. I hope before this session of Congress adjourns the John Muir National Park in the Kings Canyon area will be a legal fact. Then we can be sure that your descendants and mine will be able to take as beautiful pictures as you have taken—that is, provided they have your skill and artistry.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082909/055_wjfrhp.jpg",
  user_id: 3
)

Photo.create( title: "Manzanar School Girls", description: "Four Japanese-American Girls who were at the Internment Camp at Manzanar.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082910/056_cssxyp.jpg",
  user_id: 11
)

Photo.create( title: "California Foot Hills Gold Country", description: "If you hike long enough & high enough you will see the heart of these hills we were told. ",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082906/057_dilean.jpg",
  user_id: 11
)

Photo.create( title: "Manzanar Shrine", description: "Manzanar Shrine. They created a place of beauty in a harsh landscape.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082944/058_vwv0ta.jpg",
  user_id: 11
)

Photo.create( title: "Rockies", description: "View across river valley toward Mt. Moran.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082912/059_l2btvu.jpg",
  user_id: 11
)

Photo.create( title: "Manzanar Dust Storm", description: "'Americanism is a matter of the mind and heart; Americanism is not, and never was, a matter of race or ancestry.'",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082914/060_vgez7a.jpg",
  user_id: 11
)

Photo.create( title: "Yellowstone Falls", description: "Taken at dusk dawn from various angles. Stunning place! ",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082919/061_nn1rdf.jpg",
  user_id: 11
)

Photo.create( title: "Bryce", description: "Vertical of rock formation, from below. ",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082918/062_lpuej5.jpg",
  user_id: 11
)

Photo.create( title: "Oak in Winter", description: "In 1946 a Guggenheim fellowship enabled Adams to visit and photograph many of the national parks and monuments. From this body of work came a series of portfolios and books which document what by now was a firm personal dedication to celebrating America ‘s natural wonders through the art of the camera.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082916/063_b52g1v.jpg",
  user_id: 11
)

Photo.create( title: "Mono Lake", description: "Watching the light spill over us and on to the face of the sierras. I always love being up to watch the earth wake up around me.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082927/064_eaedpx.jpg",
  user_id: 11
)

Photo.create( title: "Grand Canyon and Colorado", description: "Now this is one of those pieces that helps us to define distance. In works like these it almost doesn't display a measure of distance but rather of time.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082951/065_qlr7em.jpg",
  user_id: 4
)

Photo.create( title: "Reflection over Mono Lake", description: "Mono Lake, Eastern Sierras, California.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082922/066_ea2web.jpg",
  user_id: 4
)

Photo.create( title: "Wanda Lake Summer", description: "\"With what one may call arrogant modesty, I think many of my pictures…have an excitement in them which commands more attention than if they were the same scene not composed or adequately printed…I think the pictures I had of the Kings Canyon-Sequoia region did have a helpful effect in getting Congress to pass the bill. But no one will ever know whether it was one percent or five percent, or whether it was entirely imaginary.\"",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082925/067_rqeoav.jpg",
  user_id: 4
)

Photo.create( title: "Thousand Island Lake", description: "There is a subtle peace that only the mountains can offer. Their presence is magnetic…a quick gaze can quickly turn to hours. For some, their sights become transfixed & the will to be in their presence becomes almost as strong as the need to breathe.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082936/068_miwt4b.jpg",
  user_id: 4
)

Photo.create( title: "Storm Clouds over Ritter", description: "\"Dear Mr. Adams,\" a woman admirer wrote in a letter in 1975, \"In writing to you, I almost feel that I am writing to John Muir, or to Yosemite Valley itself. I am overawed, but I will try to speak.\"",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082942/069_tnrwbg.jpg",
  user_id: 4
)

Photo.create( title: "Point Sur", description: "This sums up my favorite use of photography. A photo that's single purpose is to inspire others to get outside and experience our greatest resource. Wilderness.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082929/070_q2q0af.jpg",
  user_id: 4
)

Photo.create( title: "Manzanar Baseball Game", description: "Baseball game, Manzanar Relocation Center, California",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082932/071_zu8m8p.jpg",
  user_id: 4
)

Photo.create( title: "Joshua Tree and Boulders", description: "Adams' career was filled with fresh visual surprises--insights that combined to make him the most famous photographer of the twentieth century.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082936/072_x6hqak.jpg",
  user_id: 4
)

Photo.create( title: "Spring Sapplings", description: "San Francisco, California 1932, ca. 1936, 1933 Ansel Adams Archive.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082950/074_kdm1i0.jpg",
  user_id: 4
)

Photo.create( title: "Summer Herd with Donkey", description: "In 1932, Adams, Edward and Brett Weston, Imogen Cunningham, Willard Van Dyke, and a handful of other Bay Area photographers came together as Group f/64. They displayed their sharp-focus, modernist style of photography at San Francisco’s DeYoung Museum in an exhibition that stands as a landmark in the history of the medium.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082945/075_c4yree.jpg",
  user_id: 4
)

Photo.create( title: "Coastal View with Incoming Tide", description: "Northern California, 1962.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082950/076_cbib4a.png",
  user_id: 4
)

Photo.create( title: "Wilshire Blvd 1938", description: "Adams took the pictures while on assignment for Fortune magazine, which was featuring the burgeoning city and its aviation industry.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082949/078_wghve0.jpg",
  user_id: 4
)

Photo.create( title: "Chinese Theater Los Angeles", description: "Adams kept the negatives and apparently forgot about them until the early 1960s, when he looked through his files during a move from San Francisco to a new home in Carmel.  He donated them to the library rather meekly, noting in a letter that when he shot them — he guessed it was around 1939 —  \"the weather was bad over a rather long period and none of the pictures were very good…. If they have no value whatsoever, please dispose of them in the incinerator…. At any event, I do not want them back.\"",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082948/079_oldi2f.jpg",
  user_id: 4
)

Photo.create( title: "Big Sur 1941", description: "Adams and his wife lived for over 30 years in the Big Sur area. They were often happiest at home.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082953/080_qamq0q.jpg",
  user_id: 4
)

Photo.create( title: "Big Sur 1941 Fog", description: "In the early 1960s, Adams felt the need to move out of San Francisco, and chose a property in the Carmel Highlands, with impressive views of the coast and Point Lobos, a base Adams would live and work from until his death in 1984.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082953/081_neab3u.jpg",
  user_id: 4
)

Photo.create( title: "Medicine Hat", description: "High, lone mountain peak, in foreground.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082952/084_txvjb5.jpg",
  user_id: 4
)

Photo.create( title: "Lake McDonald Summer", description: "This is an iconic Ansel Adams photograph! Such a killer shot",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082951/088_gqwgjv.jpg",
  user_id: 5
)

Photo.create( title: "Glacier 1943", description: "Evening. Looking across lake toward mountains.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082953/089_ev1s0h.jpg",
  user_id: 5
)

Photo.create( title: "Burned Forest Glacier", description: "Glacier National Park. Pine trees, snow covered mountains in background. ",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082953/090_l6f6nv.jpg",
  user_id: 5
)

Photo.create( title: "Field Glacier", description: "Vertical, full view of snow covered mountain, including area below timberline. ",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082953/091_tsndsz.jpg",
  user_id: 5
)

Photo.create( title: "Ferns", description: "Sumac, Owens Valley, California, ca.1937.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082954/092_ek0f7c.jpg",
  user_id: 5
)

Photo.create( title: "Logan Pass Spring", description: "This is an iconic Ansel Adams photograph! Such a killer shot",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082955/093_ljkj0n.jpg",
  user_id: 5
)

Photo.create( title: "Logan Pass West", description: "\"I find it impossible to \'verbalize\' on the expressive content of the photograph—mine or anyone else's.\"",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082954/094_lkqxag.jpg",
  user_id: 5
)

Photo.create( title: "Field Glacier Summer", description: "This is an iconic Ansel Adams photograph! Such a killer shot",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082954/095_madn40.jpg",
  user_id: 5
)

Photo.create( title: "Court of the Patriarchs", description: "\"Court of the Patriarchs, Zion National Park.\"",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082954/096_tszfoh.jpg",
  user_id: 5
)

Photo.create( title: "Zion 1937", description: "Vertical of rock formation, from below.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082955/097_wzvbqr.jpg",
  user_id: 5
)

Photo.create( title: "Yosemite Valley Winter", description: "In 1916, Adams insisted the family take its vacation to Yosemite, and his life was changed at the sight of the national park's grandeur.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082956/098_d8skdp.jpg",
  user_id: 5
)

Photo.create( title: "Acoma Pueblo Dwellings", description: "The holdings of the National Archives Still Picture Branch include 226 photographs taken for this project, most of them signed and captioned by Adams. ",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082955/099_btfgnf.jpg",
  user_id: 5
)

Photo.create( title: "Teton Range June", description: "With all art expression, when something is seen, it is a vivid experience, sudden, compelling, and inevitable.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082955/100_bpkvkl.jpg",
  user_id: 5
)


Photo.create(
  title: "Leaves",
  description: "Glacier Bay, Alaska, ca 1948.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082956/102_cjnzm3.jpg",
  user_id: 5
)


Photo.create(
  title: "Icicles",
  description: "Yosemite, 1935, 1950",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082956/098_d8skdp.jpg",
  user_id: 5
)

Photo.create(
  title: "Cedar Trees",
  description: "Winter, Yosemite Valley, California ca. 1949",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082956/104_ti1nzn.jpg",
  user_id: 5
)


Photo.create(
  title: "Denali and Wonder Lake",
  description: "Denali National Park, Alaska 1947",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082956/105_mwwnkz.jpg",
  user_id: 5
)

Photo.create(
  title: "Jeffrey Pine",
  description: "Sentinel Dome, Yosemite National Park, California 1945, 1940",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082957/106_r2iuan.jpg",
  user_id: 5
)

Photo.create(
  title: "Maynard Dixon",
  description: "Painter, Tucson, Arizona ca. 1944",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082957/107_be3fzk.jpg",
  user_id: 5
)

Photo.create(
  title: "Maynard Dixon",
  description: "Painter, Tucson, Arizona ca. 1945, ca. 1944.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082957/109_rwrthj.jpg",
  user_id: 6
)

Photo.create( title: "Ruins", description: "Center for Creative Photography, University of Arizona: Gift of Arizona Highways magazine.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082958/112_zoided.jpg",
  user_id: 6
)


Photo.create(
  title: "One of my favorites...",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082958/113_mecci4.jpg",
  user_id: 6
)


Photo.create(
  title: "Dead Tree",
  description: "Dog Lake, Yosemite National Park, California.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082958/114_kwn4et.jpg",
  user_id: 6
)

Photo.create(
  title: "Foam",
  description: "Merced River, Yosemite Valley, California 1951.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082958/115_h3ayb2.jpg",
  user_id: 6
)


Photo.create(
  title: "Interchange",
  description: "Interchange, Los Angeles Freeway 1967.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125105/116_he7ll4.jpg",
  user_id: 6
)

Photo.create(
  title: "Self-Portrait in Victorian Mirror",
  description: "Atherton, California 1936.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125118/117_m9zwni.jpg",
  user_id: 6
)

Photo.create( title: "Rocky National Park", description: "Every experience is a form of exploration. ca. 1945.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473082959/117_pmho2g.jpg",
  user_id: 6
)


Photo.create(
  title: "Dam",
  description: "View up dam. Clouds in background.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125127/119_zwrxve.jpg",
  user_id: 6
)


Photo.create(
  title: "Canyon de Chelly",
  description: "Vertical panorama from river.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125105/120_oocj2s.jpg",
  user_id: 6
)

Photo.create(
  title: "Owens River Basin",
  description: "There are no forms in nature. Nature is a vast, chaotic collection of shapes.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125090/121_fmxvyg.jpg",
  user_id: 6
)


Photo.create(
  title: "Yellowstone",
  description: "Vertical geyser. Part of National Park Service Portfolio.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125108/122_stive3.jpg",
  user_id: 6
)

Photo.create(
  title: "Old Faithful",
  description: "Steam rising from geothermic vents.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125143/123_ee62kl.jpg",
  user_id: 6
)

Photo.create( title: "Denali", description: "Dodging and burning are steps to take care of mistakes God made in establishing tonal relationships",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125200/124_hjgl4l.jpg",
  user_id: 6
)


Photo.create(
  title: "Half Dome in Winter",
  description: "Winter contrasts. Merced River in foreground. Trees framing snow-covered Half Dome.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125134/125_pha2cf.jpg",
  user_id: 6
)

Photo.create(
  title: "Grand Canyon",
  description: "\"I don\'t know anybody who needs a critic to find out what art is\".",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125175/126_flwjcl.jpg",
  user_id: 6
)

Photo.create(
  title: "Sunrise Creek",
  description: "\"I don\'t know anybody who needs a critic to find out what art is\".",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125256/127_d8vzzz.jpg",
  user_id: 6
)


Photo.create(
  title: "Canyon de Chelly",
  description: "Under cliffs. Close up.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125175/128_vcqwam.jpg",
  user_id: 6
)

Photo.create(
  title: "St. Mary’s Lake, Glacier National Park",
  description: "Looking across toward snow-capped mountains, lake in foreground.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125183/129_agci3v.jpg",
  user_id: 6
)

Photo.create( title: "Yosemite Falls", description: "Spring. Both the grand and the intimate aspects of nature can be revealed in the expressive photograph. Both can stir enduring affirmations and discoveries, and can surely help the spectator in his search for identification with the vast world of natural beauty and wonder surrounding him",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125239/132_xhwu3t.jpg",
  user_id: 7
)

Photo.create(
  title: "Half Dome Monolith",
  description: "The photograph that made Ansel Adams career.  He turned day to night.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125263/133_kv6n0d.jpg",
  user_id: 7
)

Photo.create(
  title: "Manzanar Relocation Camp",
  description: "Stolen beauty.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125198/134_vbbbup.jpg",
  user_id: 7
)

Photo.create(
  title: "Below Forester Pass",
  description: "The whole world is, to me, very much \"alive\" - all the little growing things, even the rocks. I can't look at a swell bit of grass and earth, for instance, without feeling the essential life - the things going on - within them. The same goes for a mountain, or a bit of the ocean, or a magnificent piece of old wood",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125226/135_ws4qoa.jpg",
  user_id: 7
)

Photo.create(
  title: "Tide’s Edge",
  description: "The single most important component of a camera is the twelve inches behind it.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125292/136_ekstzc.jpg",
  user_id: 7
)

Photo.create(
  title: "Yosemite Valley, Spring",
  description: "Yosemite Valley, to me, is always a sunrise, a glitter of green and golden wonder in a vast edifice of stone and space.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125262/137_g9xw4m.jpg",
  user_id: 7
)

Photo.create( title: "Spring Run", description: "\"It was like lying in a great solemn cathedral, far vaster and more beautiful than any built by the hand of man.\"",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125275/138_lowuix.jpg",
  user_id: 7
)

Photo.create(
  title: "Mono Lake",
  description: "Mineral formations at Mono Lake. Cloudy sky.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125303/139_wjp5r1.jpg",
  user_id: 7
)

Photo.create(
  title: "Road West",
  description: "Life is your art. An open, aware heart is your camera. A oneness with your world is your film. Your bright eyes and easy smile is your museum.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125298/140_ootjbl.jpg",
  user_id: 7
)

Photo.create(
  title: "Yosemite Valley",
  description: "Cathedral Peak and oaks.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125353/141_r8i85e.jpg",
  user_id: 7
)


Photo.create(
  title: "El Capitan",
  description: "Yosemite Spring.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125295/142_gbykir.jpg",
  user_id: 7
)

Photo.create(
  title: "Afternoon Clouds",
  description: "View from Sentinel Dome.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125279/143_ef59cv.jpg",
  user_id: 7
)

Photo.create( title: "In Glacier National Park", description: "Trees and bushes in foreground, mountains in background.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125413/144_houqxp.jpg",
  user_id: 7
)


Photo.create(
  title: "Yosemite Falls",
  description: "Looking down on Yosemite Valley. Taken from Glacier Point",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125359/145_rr5mvw.jpg",
  user_id: 7
)


Photo.create(
  title: "Lichen",
  description: "In wisdom gathered over time I have found that every experience is a form of exploration.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125328/146_alrdkq.jpg",
  user_id: 7
)

Photo.create(
  title: "Tetons",
  description: "Lake in foreground.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125433/148_c77wfr.jpg",
  user_id: 7
)


Photo.create(
  title: "Moonrise",
  description: "Not everybody trusts paintings but people believe photographs.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125387/149_m8nt1i.jpg",
  user_id: 7
)

Photo.create(
  title: "Monolith 2",
  description: "Basket dome in foreground.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125375/150_xcls68.jpg",
  user_id: 7
)

Photo.create(
  title: "Arches",
  description: "Arches National Park.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125632/154_ixtbhj.jpg",
  user_id: 7
)


Photo.create(
  title: "Dressmaking Class",
  description: "Mrs. Ryie Yoshizawa, instructor, standing in front of class of women students, one woman in foreground with dressmaker's dummy.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125435/162_pmiwux.jpg",
  user_id: 8
)

Photo.create( title: "Glacier National Park", description: "Going to the Sun Road.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125470/170_y15j5o.jpg",
  user_id: 8
)


Photo.create(
  title: "Grand Canyon National Park",
  description: "North rim. A favorite.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125493/171_s628q6.jpg",
  user_id: 8
)

Photo.create(
  title: "Acadia National Park",
  description: "A great photograph is one that fully expresses what one feels, in the deepest sense, about what is being photographed.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125485/172_me7urt.jpg",
  user_id: 8
)

Photo.create(
  title: "Joshua Tree and Boulder",
  description: "To the complaint, 'There are no people in these photographs,' I respond, There are always two people: the photographer and the viewer.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125507/174_psvrdm.jpg",
  user_id: 8
)

Photo.create(
  title: "Dead Tree",
  description: "Sierra Nevada Foothills.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125557/175_thjqim.jpg",
  user_id: 8
)

Photo.create( title: "Bracken", description: "Denali, Alaska.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125605/176_bkhxco.jpg",
  user_id: 9
)


Photo.create(
  title: "Mountain Vista",
  description: "Denali, Alaska.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125527/177_w462xj.jpg",
  user_id: 9
)


Photo.create(
  title: "Acadia Driftwood",
  description: "Acadia National Park.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125555/178_fanxet.jpg",
  user_id: 9
)

Photo.create(
  title: "Precipice Lake",
  description: "Taken during a Sierra Club Excursion.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125561/179_dvpnly.jpg",
  user_id: 9
)


Photo.create(
  title: "Yosemite Falls",
  description: "This is my favorite Ansel Adams photograph!  I love the way the wind moves the water.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125568/180_bokfjp.jpg",
  user_id: 9
)

Photo.create(
  title: "Chinese Theater",
  description: "Ansel Adams disparaged this photographic series of Los Angeles.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125588/181_awmh3x.jpg",
  user_id: 9
)

Photo.create( title: "View Down Wilshire", description: "Los Angeles, 1939.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125601/182_pzwyac.jpg",
  user_id: 9
)


Photo.create(
  title: "Cars on Wilshire",
  description: "Not much congestion 80 years ago.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125641/184_qyobpm.jpg",
  user_id: 9
)

Photo.create(
  title: "Evening, McDonald Lake",
  description: "Glacier National Park, looking across lake toward mountain.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125638/185_wvuxsg.jpg",
  user_id: 9
)


Photo.create(
  title: "Reflections",
  description: "No man has the right to dictate what other men should perceive, create or produce, but all should be encouraged to reveal themselves, their perceptions and emotions, and to build confidence in the creative spirit.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125800/186_fvka6a.jpg",
  user_id: 9
)

Photo.create(
  title: "Near Grand Teton National Park",
  description: "Roadway, low horizon.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125673/187_gvgebu.jpg",
  user_id: 9
)

Photo.create(
  title: "Leaves",
  description: "Glacier Bay, Alaska, ca 1948.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125718/188_h3iuyl.jpg",
  user_id: 9
)

Photo.create(
  title: "Signal Mountain",
  description: "Tetons National Park. Valley, snow-capped mountains.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125694/189_bxdwai.jpg",
  user_id: 9
)


Photo.create(
  title: "Personal Life",
  description: "Manzanar Relocation Camp.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125702/192_tay9hz.jpg",
  user_id: 10
)


Photo.create(
  title: "Carlsbad Canyon",
  description: "Illuminated stalactite.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125751/194_av1blt.jpg",
  user_id: 10
)


Photo.create(
  title: "Mono Lake",
  description: "Reflection of clouds on still lake.",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125823/197_cbw0rq.jpg",
  user_id: 10
)
Photo.create(
  title: "Elevator House",
  description: "Distant View. Carlsbad Canyons",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125886/199_zifsn8.jpg",
  user_id: 10
)
Photo.create(
  title: "In the Queens Chambers",
  description: "Stalagmite and stalactite. Carlsbad Canyons",
  photo_img_url: "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473125891/200_lbeh5h.jpg",
  user_id: 10
)
