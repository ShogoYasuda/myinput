set :output, 'log/crontab.log'
set :environment, :production

every :hour do
  rake "crawl:hatebu"
  rake "crawl:hatebu_general"
  rake "crawl:hatebu_social"
  rake "crawl:hatebu_economics"
  rake "crawl:hatebu_life"
  rake "crawl:hatebu_knowledge"
  rake "crawl:hatebu_it"
  rake "crawl:hatebu_fun"
  rake "crawl:hatebu_entertainment"
  rake "crawl:hatebu_game"
end

every 4.hours do
  rake "crawl:gigazin"
  rake "crawl:gizmodo"
end
