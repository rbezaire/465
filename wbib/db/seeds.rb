# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
topics = Topic.create(
    [
        {title: 'Rocky Balboa', description: 'I cant believe I met him'},
        {title: '1967 Shelby Mustang GT500', description: 'Babe your balls look like this'},
        {title: 'What A Loser', description: 'Wow its time'},
        {title: 'Times up', description: 'Shit man its really time'}
    ]
)
references = Reference.create(
    [
        {url: 'http://helloworld.com/', time: '', topic_id: topics[0].id},
        {url: 'https://alksdfaljhgfkah.com', time: '', topic_id: topics[1].id},
        {url: 'https://www.whataloser.com', time: '', topic_id: topics[2].id},
        {url: 'https://www.yourock.com', time: '', topic_id: topics[3].id}
    ]
)


