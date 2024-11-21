# Plugins are disabled on Github Pages... :(
Jekyll::Hooks.register([:pages, :posts], :pre_render) do |post|
    if post.data['link_pokemon_names']
        puts "Replacing Pokemon Names..." + post.data['title']
        post.site.data['pokemon_names'].each {
            |x| post.content = post.content.gsub(/\b#{x['Name']}\b/, "[#{x['Name']}](https://bulbapedia.bulbagarden.net/wiki/#{x['Name']}_(Pok%C3%A9mon)){:target=\"_blank\"}")
        }
    end
end

Jekyll::Hooks.register([:pages, :posts], :pre_render) do |post|
    if post.data['link_stardew_valley_names']
        puts "Replacing Stardew Valley Names..." + post.data['title']
        post.site.data['stardew_valley_names'].each {
            |x| post.content = post.content.gsub(/\b#{x['Name']}\b/, "[#{x['Name']}](https://stardewvalleywiki.com/#{x['Name']}){:target=\"_blank\"}")
        }
    end
end