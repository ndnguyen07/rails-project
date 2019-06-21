# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Champion.destroy_all
Account.destroy_all


# User
User1 = User.create(username: "admin", password:'123456')


#Champion
Champion1 = Champion.create(name:"Aatrox",title:"the Darkin Blade",tags:["Fighter","Tank"],description:'Aatrox utilizes a special resource system instead of Mana. He fills up his Blood Well every time that he activates an ability or drains health from himself. If Aatrox dies with any blood in his Blood Well he revives and is then unable to revive himself for a moderate amount of time.')
Champion2 = Champion.create(name:"Ahri", title:'the Nine-Tailed Fox',tags:['Mage','Assassin'], description:"Ahri is a very mobile assassin class champion who requires a good deal of precision to pull off her abilities.")
Champion3 = Champion.create(name:"Akali", title:"the Fist of Shadow", tags: ["Assassin"], description:"Akali is a ninja-like champion in the game")
Champion4 = Champion.create(name:"Alistar", title:"the Minotaur", tags:["Tank","Support"],description:"A large minotaur")
# Champion = Champion.create(name:,title:,tags:,description:)

#Account
Account1 = Account.create(name: 'Santorin', summoner_level: '100')
Account2 = Account.create(name: '1 Shady', summoner_level: '278')
Account3 = Account.create(name: 'FLY V1per', summoner_level: '241')

#Build
Build1 = Build.create(name:'whatever',runes:'Precision', items:'Crit', description:"Hello", user_id: User1.id)
Build2 = Build.create(name:'idk',runes:'Domination', items:'Lethality', description:"I'm Working", user_id: User1.id)
Build3 = Build.create(name:'whatev',runes:'Sorcery', items:'Ability', description:'yayy', user_id: User1.id)
Build4 = Build.create(name:'I Cant Even!', runes:'Resolve', items:'Tank', description:'ughhh', user_id: User1.id)
Build5 = Build.create(name:'Whaaaa',runes:'Inspiration', items: 'Support', description:'woooo', user_id: User1.id)
