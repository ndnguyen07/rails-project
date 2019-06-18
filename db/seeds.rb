# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Champion.destroy_all


# User
user1 = User.create(username: "admin", password:'123456')


#Champion
Champion1 = Champion.create(name:"Aatrox",title:"the Darkin Blade",tags:["Fighter","Tank"],description:'One of the ancient darkin, Aatrox was once a peerless swordmaster who reveled in the bloody chaos of the battlefield. Trapped within his own blade by the magic of his foes, he waited out the millennia for a suitable host to wield him—this mortal warrior...')
Champion2 = Champion.create(name:"Ahri", title:'the Nine-Tailed Fox',tags:['Mage','Assassin'], description:"Innately connected to the latent power of Runeterra, Ahri is a vastaya who can reshape magic into orbs of raw energy. She revels in toying with her prey by manipulating their emotions before devouring their life essence. Despite her predatory nature...")