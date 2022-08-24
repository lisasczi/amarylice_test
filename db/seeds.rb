# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

file_flower1 = URI.open('https://static.wixstatic.com/media/25a197_990c4335705340cba00bc58e5dfdf363~mv2.jpg/v1/fill/w_553,h_625,al_c,q_85,usm_0.66_1.00_0.01/25a197_990c4335705340cba00bc58e5dfdf363~mv2.webp')
flower_one = Flower.create!(
  name: "Bouquet pastel de Ciska",
  description: "Bouquet de fleurs tons et blanc et rose tendre, pointe de feuillage...
  Hortensias, pivoines, roses, oeillets et fleurs de saison selon arrivages...",
  price: 38
)
flower_one.image.attach(io: file_flower1, filename: "#{flower_one.name}", content_type: 'image/jpg')
flower_one.save!


file_flower2 = URI.open('https://static.wixstatic.com/media/25a197_3731cd1c9f13428aaf99e6dab3299d2f~mv2.jpg/v1/fill/w_500,h_625,al_c,q_85,usm_0.66_1.00_0.01/25a197_3731cd1c9f13428aaf99e6dab3299d2f~mv2.webp')
flower_two = Flower.create!(
  name: "Bouquet chic et champêtre",
  description: "Roses gros boutons d'exception, aster, lisianthus et pointe d'eucalyptus...
  Deux options :
  Tons roses ou blancs selon vos préférences.
  Vous souhaitez une précision ou rajouter d'autres fleurs ?
  Appelez- nous à la boutique, nous vous conseillerons : 04.78.37.38.29
  A titre informatif, le prix d'une rose gros bouton à l'unité est de 5 € à 6 € en selon les calibres et arrivages.",
  price: 40
)
flower_two.image.attach(io: file_flower2, filename: "#{flower_two.name}", content_type: 'image/jpg')
flower_two.save!


file_flower3 = URI.open('https://static.wixstatic.com/media/25a197_125a01d28cbc4c76b67659b5806234ad~mv2.jpg/v1/fill/w_469,h_625,al_c,q_85,usm_0.66_1.00_0.01/25a197_125a01d28cbc4c76b67659b5806234ad~mv2.webp')
flower_three = Flower.create!(
  name: "Bouquet de roses et gypsophile",
  description: "Roses gros boutons d'exception, gypsophile et pointe d'eucalyptus...
  Deux options :
  Tons roses ou blancs selon vos préférences.
  Vous souhaitez une précision ou rajouter d'autres fleurs ?
  Appelez- nous à la boutique, nous vous conseillerons : 04.78.37.38.29
  A titre informatif, le prix d'une rose gros bouton à l'unité est de 5 € en moyenne selon arrivages.",
  price: 40
)
flower_three.image.attach(io: file_flower3, filename: "#{flower_three.name}", content_type: 'image/jpg')
flower_three.save!


file_flower4 = URI.open('https://static.wixstatic.com/media/25a197_2b2d2df0daa449329667508c9c658ff0~mv2.jpg/v1/fill/w_501,h_625,al_c,q_85,usm_0.66_1.00_0.01/25a197_2b2d2df0daa449329667508c9c658ff0~mv2.webp')
flower_four = Flower.create!(
  name: "Bouquet de roses",
  description: "Bouquet de grandes roses gros boutons...
  Autre option :
  Pour des roses plus petites, un budget différent de ceux proposés,  ou une demande particulière, contactez-nous directement à la boutique...",
  price: 38.50
)
flower_four.image.attach(io: file_flower4, filename: "#{flower_four.name}", content_type: 'image/jpg')
flower_four.save!


file_flower5 = URI.open('https://static.wixstatic.com/media/25a197_31c762aa01a64f47ad6fc87feb9539c8~mv2.jpeg/v1/fill/w_625,h_625,al_c,q_85,usm_0.66_1.00_0.01/25a197_31c762aa01a64f47ad6fc87feb9539c8~mv2.webp')
flower_five = Flower.create!(
  name: "Bouquet Passion",
  description: "Bouquet camaïeux de rouge et fuschia : roses rouges gros boutons, renoncules, gypsophile fuschia, vandas, pointe d'eucalyptus...
  Autres variétés possibles selon les arrivages...
  Vous souhaitez une précision, privilégier ou éviter une variété de fleurs ?
  Appelez- nous à la boutique, nous vous conseillerons : 04.78.37.38.29",
  price: 45
)
flower_five.image.attach(io: file_flower5, filename: "#{flower_five.name}", content_type: 'image/jpg')
flower_five.save!


file_flower6 = URI.open('https://static.wixstatic.com/media/25a197_7ab1b50f401a48d29a6d8fc37fdf3155~mv2.jpg/v1/fill/w_588,h_625,al_c,q_85,usm_0.66_1.00_0.01/25a197_7ab1b50f401a48d29a6d8fc37fdf3155~mv2.webp')
flower_six = Flower.create!(
  name: "Bouquet tendresse",
  description: "Bouquet de fleurs tons rose tendre, crème, vert de gris...
  Hortensias, chardons, lisianthus, roses, eucalyptus...",
  price: 38
)
flower_six.image.attach(io: file_flower6, filename: "#{flower_six.name}", content_type: 'image/jpg')
flower_six.save!


file_flower7 = URI.open('https://static.wixstatic.com/media/25a197_95df36c29b6b44718af83860408d462a~mv2.jpeg/v1/fill/w_395,h_625,al_c,q_85,usm_0.66_1.00_0.01/25a197_95df36c29b6b44718af83860408d462a~mv2.webp')
flower_seven = Flower.create!(
  name: "Fleurs de saison - Couleur",
  description: "Bouquet de saison, coloré et joyeux.
  Fleurs sélectionnées et choisies chaque semaine.
  Autre option :
  Envie d'une couleur en particulier ? D'une variété de fleurs ? Un autre budget ?
  Appelez-nous directement à la boutique !",
  price: 30
)
flower_seven.image.attach(io: file_flower7, filename: "#{flower_seven.name}", content_type: 'image/jpg')
flower_seven.save!


file_flower8 = URI.open('https://static.wixstatic.com/media/ed92f0_e569f83b9c4443108b2119b4c5df219c~mv2.png/v1/fill/w_621,h_587,al_c,q_90/ed92f0_e569f83b9c4443108b2119b4c5df219c~mv2.webp')
flower_eight = Flower.create!(
  name: "Fleurs de saison - Blanc et vert",
  description: "Bouquet de saison, élégance du duo blanc/vert.
  Fleurs sélectionnées et choisies chaque semaine.
  Autre option :
  Une envie particulière ? Un autre budget ? Une autre zone de livraison ?
  Appelez-nous directement à la boutique : 04 78 37 38 29​",
  price: 30
)
flower_eight.image.attach(io: file_flower8, filename: "#{flower_eight.name}", content_type: 'image/jpg')
flower_eight.save!



# essaie = JoinTableFlowersCart.create!(
#   flower_id: 1,
#   cart_id: 1,
#   quantity: 1
# )

# essaies = JoinTableFlowersCart.create!(
#   flower_id: 2,
#   cart_id: 1,
#   quantity: 2
# )

# one_cart = Carte.create!(
#   user_id: 1,
# )
