# Plugins are disabled on Github Pages... :(
Jekyll::Hooks.register([:pages, :posts], :pre_render) do |post|
    # puts post.methods - Object.methods
    if post.data['link_pokemon_names']
        puts "Replacing!!"
        names = Array.[]("Misdreavus", "Mismagius", "Ditto")
        post.site.data['pokemon_names'].each {
            |x| post.content = post.content.gsub(x['Name'], "[#{x['Name']}](https://bulbapedia.bulbagarden.net/wiki/#{x['Pokemon']}_(Pok%C3%A9mon)){:target=\"_blank\"}")
        }
    end
end