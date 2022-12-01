# Plugins are disabled on Github Pages... :(
Jekyll::Hooks.register([:pages, :posts], :pre_render) do |post|
    names = Array.[]("Misdreavus", "Mismagius")
    names.each {
        |x| post.content = post.content.gsub(x, "[#{x}](https://bulbapedia.bulbagarden.net/wiki/#{x}_(Pok%C3%A9mon)){:target=\"_blank\"}")
    }
    
end