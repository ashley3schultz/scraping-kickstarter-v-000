# require libraries/modules here
require 'nokogiri'
require 'pry'


def create_project_hash
  projects = {}
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  binding.pry
  list = kickstarter.css("li.project.grid_4")
  list.each {|project| 
    title = project.css("h2.bbcard_name strong a").text
    image = project.css("div.project-thumbnail a img").attribute("src").value}
end
create_project_hash

# projects: kickstarter.css("li.project.grid_4")
