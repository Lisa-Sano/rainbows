require 'rainbow'

red = [255,0,0]
green = [0,255,0]
blue = [0,0,255]

color_lookup = {
  [255,0,0] => "red",
  [255,125,0] => "orange",
  [255,255,0] => "yellow",
  [125,255,0] => "spring green",
  [0,255,0] => "green",
  [0,255,125] => "turquoise",
  [0,255,255] => "cyan",
  [0,125,255] => "ocean",
  [0,0,255] => "blue",
  [125,0,255] => "violet",
  [255,0,255] => "magenta",
  [255,0,125] => "raspberry"
}

def mix_colors(color1,color2)
  mixed_color = []
  3.times do |i|
    mixed_color[i] = color1[i] + color2[i]
  end
  return mixed_color
end

new_color = mix_colors(red,green)
# puts "#{color_lookup[red]} #{red} + #{color_lookup[green]} #{green} = #{color_lookup[new_color]} #{new_color}"


rainbow = []
rainbow[0] = {
  red: {
    r: 255,
    g: 0,
    b: 0
  }
}

rainbow[1] = {
  orange: {
    r: 255,
    g: 127,
    b: 0
  }
}

rainbow[2] = {
  yellow: {
    r: 255,
    g: 255,
    b: 0
  }
}

rainbow[3] = {
  green: {
    r: 0,
    g: 255,
    b: 0
  }
}

rainbow[4] = {
  blue: {
    r: 0,
    g: 0,
    b: 255
  }
}

rainbow[5] = {
  indigo: {
    r: 75,
    g: 0,
    b: 130
  }
}

rainbow[6] = {
  violet: {
    r: 143,
    g: 0,
    b: 255
  }
}

rainbow.each do |hash|
  r = hash.first[1][:r]
  g = hash.first[1][:g]
  b = hash.first[1][:b]
  puts Rainbow(hash.first[0].to_s).color(r, g, b)
end


