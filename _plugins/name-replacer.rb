# Plugins are disabled on Github Pages... :(
require 'uri'

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
            |x| post.content = x['Regex'] ? post.content.gsub(/\b#{x['Regex']}\b/, "[#{x['Name']}](https://stardewvalleywiki.com/#{x['Name']}){:target=\"_blank\"}") : post.content.gsub(/\b#{x['Name']}\b/, "[#{x['Name']}](https://stardewvalleywiki.com/#{x['Name']}){:target=\"_blank\"}")
        }
    end
end

Jekyll::Hooks.register([:pages, :posts], :pre_render) do |post|
    if post.data['link_palworld_names']
        puts "Replacing Palworld Names..." + post.data['title']
        names = post.site.data['palworld_names'].map { |x| x['Name'] }.sort_by { |name| -name.length }
        link_pattern = /(\[[^\]]+\]\([^)]+\)(?:\{:[^}]+\})?)/
        post.content = post.content.split(link_pattern).map.with_index do |segment, index|
            next segment if index.odd?

            names.each do |name|
                slug = URI.encode_uri_component(name.gsub(' ', '_'))
                url = "https://palworld.wiki.gg/wiki/#{slug}"
                segment = segment.split(link_pattern).map.with_index do |part, part_index|
                    next part if part_index.odd?

                    part.gsub(/\b#{Regexp.escape(name)}\b/, "[#{name}](#{url}){:target=\"_blank\"}")
                end.join
            end
            segment
        end.join
    end
end