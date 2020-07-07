# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create(:name => 'Demo User',
            :email => 'test@example.com',
            :password => 'demouser',
            :password_confirmation => 'demouser')


Connection.create([{
    user: User.first,
    names: 'James and John',
    connection_date: Time.now,
    insta: '@jamesandjohn',
    memory: 'We met James and John at the drag ball game. They had a lovely dog named sophie and they are really into permaculture.'
},{
    user: User.first,
    names: 'Elsie',
    connection_date: Time.now,
    insta: '@elsiewashere',
    memory: 'Elsie has fabulous energy. She roasts her own coffee beans and volunteers for the NDP.'

}
])