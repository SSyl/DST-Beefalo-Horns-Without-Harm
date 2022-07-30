name = "Beefalo Horns Without Harm"
version = "1.1"
author = "Syl"

description = "This mod lets you get Beefalo Horns without having to kill the Beefalo."..
" It does this by having a very low (although customizable) percent chance to drop a horn when shaved."..
"\n\nYou may be asking yourself, why would a Beefalo horn drop when you shave them?"..
"\nWell, Beefalo horns are always growing and need occasional grooming. Sometimes, during the grooming process, the old molted horn happens to come loose as the new horn comes in."..
"\n\nAnd there you have it, Beefalo Horns with no harm to our majestic Beefalo friends."

-- I haven't uploaded it to Klei forums
forumthread = ""

configuration_options =
{
  {
    name = "hornChanceOption",
    label = "Drop Chance",
    hover = "Chance the horn will drop when a Beefalo is shaved"..
    "\n1% is default.",
    options =
       {
         {description = "0.1%", data = 0.001},
         {description = "0.5%", data = 0.005},
         {description = "1%", data = 0.01},
         {description = "2%", data = 0.02},
         {description = "3%", data = 0.03},
         {description = "4%", data = 0.04},
         {description = "5%", data = 0.05},
         {description = "6%", data = 0.06},
         {description = "7%", data = 0.07},
         {description = "8%", data = 0.08},
         {description = "9%", data = 0.09},
         {description = "10%", data = 0.1},
         {description = "25%", data = 0.25},
         {description = "50%", data = 0.50},
         {description = "100%", data = 1.0},
       },
    default = 0.01
  },
}

api_version_dst = 10

priority = -998

-- Working on DST for now. I'll see about single-player later.
dont_starve_compatible = true
reign_of_giants_compatible = true
dst_compatible = true

all_clients_require_mod = false
client_only_mod = false

server_filter_tags = {"Beefalo Horns", "Horns"}

icon_atlas = "HornsWithoutHarmIcon.xml"
icon = "HornsWithoutHarmIcon.tex"
