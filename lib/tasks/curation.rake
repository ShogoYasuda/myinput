namespace :crawl do

  require 'open-uri'

  desc "Crawl はてなブックマーク"
  task :hatebu_it => :environment do
    url = "http://b.hatena.ne.jp/hotentry/it?layout=list"
    doc = Nokogiri::HTML(open(url),nil,"utf-8")
    doc.css("ul.entry-list-l li.entrylist-unit").each do |node|
      begin
        title = node.css("h3.hb-entry-link-container > a.entry-link").text
        thumbnail = node.css("ul.entry-data li.description > a > img")
        News.find_or_create_by(title: title) do |news|
          news.name = "はてなブックマーク"
          news.short_name = "hatebu"
          news.category = "it"
          news.title = title
          news.url = node.css("h3.hb-entry-link-container > a.entry-link").attr('href').to_s
          news.description = node.css("ul.entry-data li.description > blockquote").text
          news.thumbnail = thumbnail.attr('src').to_s unless thumbnail.blank?
          news.point = node.css("ul.entry-data li.users span").text
          news.date = node.css("ul.entry-data li.date").text
          news.domain = node.css("ul.entry-data li.domain a span").text
          news.favicon = node.css("ul.entry-data li.domain a img").attr('src').to_s
          news.tag = node.css("ul.entry-data li.tag a").text
          news.save
          if news.save
            puts 'Hatebu -> ' + title
          end
        end
      rescue => e
        puts e
      end
    end
  end

  desc "Crawl はてなブックマーク:総合"
  task :hatebu => :environment do
    url = "http://b.hatena.ne.jp/hotentry?layout=list"
    doc = Nokogiri::HTML(open(url),nil,"utf-8")
    doc.css("ul.entry-list-l li.entrylist-unit").each do |node|
      begin
        title = node.css("h3.hb-entry-link-container > a.entry-link").text
        thumbnail = node.css("ul.entry-data li.description > a > img")
        News.find_or_create_by(title: title) do |news|
          news.name = "はてなブックマーク"
          news.short_name = "hatebu"
          news.category = "all"
          news.title = title
          news.url = node.css("h3.hb-entry-link-container > a.entry-link").attr('href').to_s
          news.description = node.css("ul.entry-data li.description > blockquote").text
          news.thumbnail = thumbnail.attr('src').to_s unless thumbnail.blank?
          news.point = node.css("ul.entry-data li.users span").text
          news.date = node.css("ul.entry-data li.date").text
          news.domain = node.css("ul.entry-data li.domain a span").text
          news.favicon = node.css("ul.entry-data li.domain a img").attr('src').to_s
          news.tag = node.css("ul.entry-data li.tag a").text
          news.save
          if news.save
            puts 'Hatebu -> ' + title
          end
        end
      rescue => e
        puts e
      end
    end
  end

  desc "Crawl はてなブックマーク:一般"
  task :hatebu_general => :environment do
    url = "http://b.hatena.ne.jp/hotentry/general?layout=list"
    doc = Nokogiri::HTML(open(url),nil,"utf-8")
    doc.css("ul.entry-list-l li.entrylist-unit").each do |node|
      begin
        title = node.css("h3.hb-entry-link-container > a.entry-link").text
        thumbnail = node.css("ul.entry-data li.description > a > img")
        News.find_or_create_by(title: title) do |news|
          news.name = "はてなブックマーク"
          news.short_name = "hatebu"
          news.category = "general"
          news.title = title
          news.url = node.css("h3.hb-entry-link-container > a.entry-link").attr('href').to_s
          news.description = node.css("ul.entry-data li.description > blockquote").text
          news.thumbnail = thumbnail.attr('src').to_s unless thumbnail.blank?
          news.point = node.css("ul.entry-data li.users span").text
          news.date = node.css("ul.entry-data li.date").text
          news.domain = node.css("ul.entry-data li.domain a span").text
          news.favicon = node.css("ul.entry-data li.domain a img").attr('src').to_s
          news.tag = node.css("ul.entry-data li.tag a").text
          news.save
          if news.save
            puts 'Hatebu -> ' + title
          end
        end
      rescue => e
        puts e
      end
    end
  end

  desc "Crawl はてなブックマーク"
  task :hatebu_social => :environment do
    url = "http://b.hatena.ne.jp/hotentry/social?layout=list"
    doc = Nokogiri::HTML(open(url),nil,"utf-8")
    doc.css("ul.entry-list-l li.entrylist-unit").each do |node|
      begin
        title = node.css("h3.hb-entry-link-container > a.entry-link").text
        thumbnail = node.css("ul.entry-data li.description > a > img")
        News.find_or_create_by(title: title) do |news|
          news.name = "はてなブックマーク"
          news.short_name = "hatebu"
          news.category = "social"
          news.title = title
          news.url = node.css("h3.hb-entry-link-container > a.entry-link").attr('href').to_s
          news.description = node.css("ul.entry-data li.description > blockquote").text
          news.thumbnail = thumbnail.attr('src').to_s unless thumbnail.blank?
          news.point = node.css("ul.entry-data li.users span").text
          news.date = node.css("ul.entry-data li.date").text
          news.domain = node.css("ul.entry-data li.domain a span").text
          news.favicon = node.css("ul.entry-data li.domain a img").attr('src').to_s
          news.tag = node.css("ul.entry-data li.tag a").text
          news.save
          if news.save
            puts 'Hatebu -> ' + title
          end
        end
      rescue => e
        puts e
      end
    end
  end

  desc "Crawl はてなブックマーク"
  task :hatebu_economics => :environment do
    url = "http://b.hatena.ne.jp/hotentry/economics?layout=list"
    doc = Nokogiri::HTML(open(url),nil,"utf-8")
    doc.css("ul.entry-list-l li.entrylist-unit").each do |node|
      begin
        title = node.css("h3.hb-entry-link-container > a.entry-link").text
        thumbnail = node.css("ul.entry-data li.description > a > img")
        News.find_or_create_by(title: title) do |news|
          news.name = "はてなブックマーク"
          news.short_name = "hatebu"
          news.category = "economics"
          news.title = title
          news.url = node.css("h3.hb-entry-link-container > a.entry-link").attr('href').to_s
          news.description = node.css("ul.entry-data li.description > blockquote").text
          news.thumbnail = thumbnail.attr('src').to_s unless thumbnail.blank?
          news.point = node.css("ul.entry-data li.users span").text
          news.date = node.css("ul.entry-data li.date").text
          news.domain = node.css("ul.entry-data li.domain a span").text
          news.favicon = node.css("ul.entry-data li.domain a img").attr('src').to_s
          news.tag = node.css("ul.entry-data li.tag a").text
          news.save
          if news.save
            puts 'Hatebu -> ' + title
          end
        end
      rescue => e
        puts e
      end
    end
  end

  desc "Crawl はてなブックマーク"
  task :hatebu_life => :environment do
    url = "http://b.hatena.ne.jp/hotentry/life?layout=list"
    doc = Nokogiri::HTML(open(url),nil,"utf-8")
    doc.css("ul.entry-list-l li.entrylist-unit").each do |node|
      begin
        title = node.css("h3.hb-entry-link-container > a.entry-link").text
        thumbnail = node.css("ul.entry-data li.description > a > img")
        News.find_or_create_by(title: title) do |news|
          news.name = "はてなブックマーク"
          news.short_name = "hatebu"
          news.category = "life"
          news.title = title
          news.url = node.css("h3.hb-entry-link-container > a.entry-link").attr('href').to_s
          news.description = node.css("ul.entry-data li.description > blockquote").text
          news.thumbnail = thumbnail.attr('src').to_s unless thumbnail.blank?
          news.point = node.css("ul.entry-data li.users span").text
          news.date = node.css("ul.entry-data li.date").text
          news.domain = node.css("ul.entry-data li.domain a span").text
          news.favicon = node.css("ul.entry-data li.domain a img").attr('src').to_s
          news.tag = node.css("ul.entry-data li.tag a").text
          news.save
          if news.save
            puts 'Hatebu -> ' + title
          end
        end
      rescue => e
        puts e
      end
    end
  end

  desc "Crawl はてなブックマーク"
  task :hatebu_knowledge => :environment do
    url = "http://b.hatena.ne.jp/hotentry/knowledge?layout=list"
    doc = Nokogiri::HTML(open(url),nil,"utf-8")
    doc.css("ul.entry-list-l li.entrylist-unit").each do |node|
      begin
        title = node.css("h3.hb-entry-link-container > a.entry-link").text
        thumbnail = node.css("ul.entry-data li.description > a > img")
        News.find_or_create_by(title: title) do |news|
          news.name = "はてなブックマーク"
          news.short_name = "hatebu"
          news.category = "knowledge"
          news.title = title
          news.url = node.css("h3.hb-entry-link-container > a.entry-link").attr('href').to_s
          news.description = node.css("ul.entry-data li.description > blockquote").text
          news.thumbnail = thumbnail.attr('src').to_s unless thumbnail.blank?
          news.point = node.css("ul.entry-data li.users span").text
          news.date = node.css("ul.entry-data li.date").text
          news.domain = node.css("ul.entry-data li.domain a span").text
          news.favicon = node.css("ul.entry-data li.domain a img").attr('src').to_s
          news.tag = node.css("ul.entry-data li.tag a").text
          news.save
          if news.save
            puts 'Hatebu -> ' + title
          end
        end
      rescue => e
        puts e
      end
    end
  end

  desc "Crawl はてなブックマーク"
  task :hatebu_fun => :environment do
    url = "http://b.hatena.ne.jp/hotentry/fun?layout=list"
    doc = Nokogiri::HTML(open(url),nil,"utf-8")
    doc.css("ul.entry-list-l li.entrylist-unit").each do |node|
      begin
        title = node.css("h3.hb-entry-link-container > a.entry-link").text
        thumbnail = node.css("ul.entry-data li.description > a > img")
        News.find_or_create_by(title: title) do |news|
          news.name = "はてなブックマーク"
          news.short_name = "hatebu"
          news.category = "fun"
          news.title = title
          news.url = node.css("h3.hb-entry-link-container > a.entry-link").attr('href').to_s
          news.description = node.css("ul.entry-data li.description > blockquote").text
          news.thumbnail = thumbnail.attr('src').to_s unless thumbnail.blank?
          news.point = node.css("ul.entry-data li.users span").text
          news.date = node.css("ul.entry-data li.date").text
          news.domain = node.css("ul.entry-data li.domain a span").text
          news.favicon = node.css("ul.entry-data li.domain a img").attr('src').to_s
          news.tag = node.css("ul.entry-data li.tag a").text
          news.save
          if news.save
            puts 'Hatebu -> ' + title
          end
        end
      rescue => e
        puts e
      end
    end
  end

  desc "Crawl はてなブックマーク"
  task :hatebu_entertainment => :environment do
    url = "http://b.hatena.ne.jp/hotentry/entertainment?layout=list"
    doc = Nokogiri::HTML(open(url),nil,"utf-8")
    doc.css("ul.entry-list-l li.entrylist-unit").each do |node|
      begin
        title = node.css("h3.hb-entry-link-container > a.entry-link").text
        thumbnail = node.css("ul.entry-data li.description > a > img")
        News.find_or_create_by(title: title) do |news|
          news.name = "はてなブックマーク"
          news.short_name = "hatebu"
          news.category = "entertainment"
          news.title = title
          news.url = node.css("h3.hb-entry-link-container > a.entry-link").attr('href').to_s
          news.description = node.css("ul.entry-data li.description > blockquote").text
          news.thumbnail = thumbnail.attr('src').to_s unless thumbnail.blank?
          news.point = node.css("ul.entry-data li.users span").text
          news.date = node.css("ul.entry-data li.date").text
          news.domain = node.css("ul.entry-data li.domain a span").text
          news.favicon = node.css("ul.entry-data li.domain a img").attr('src').to_s
          news.tag = node.css("ul.entry-data li.tag a").text
          news.save
          if news.save
            puts 'Hatebu -> ' + title
          end
        end
      rescue => e
        puts e
      end
    end
  end

  desc "Crawl はてなブックマーク"
  task :hatebu_game => :environment do
    url = "http://b.hatena.ne.jp/hotentry/game?layout=list"
    doc = Nokogiri::HTML(open(url),nil,"utf-8")
    doc.css("ul.entry-list-l li.entrylist-unit").each do |node|
      begin
        title = node.css("h3.hb-entry-link-container > a.entry-link").text
        thumbnail = node.css("ul.entry-data li.description > a > img")
        News.find_or_create_by(title: title) do |news|
          news.name = "はてなブックマーク"
          news.short_name = "hatebu"
          news.category = "game"
          news.title = title
          news.url = node.css("h3.hb-entry-link-container > a.entry-link").attr('href').to_s
          news.description = node.css("ul.entry-data li.description > blockquote").text
          news.thumbnail = thumbnail.attr('src').to_s unless thumbnail.blank?
          news.point = node.css("ul.entry-data li.users span").text
          news.date = node.css("ul.entry-data li.date").text
          news.domain = node.css("ul.entry-data li.domain a span").text
          news.favicon = node.css("ul.entry-data li.domain a img").attr('src').to_s
          news.tag = node.css("ul.entry-data li.tag a").text
          news.save
          if news.save
            puts 'Hatebu -> ' + title
          end
        end
      rescue => e
        puts e
      end
    end
  end

  desc "Crawl GIGAZIN"
  task :gigazin => :environment do
    url = "http://gigazine.net/"
    doc = Nokogiri::HTML(open(url),nil,"utf-8")
    doc.css("#grid-content .box").each do |node|
      begin
        title = node.css("h2.title").text
        thumb = node.css(".boxgrid a img").attr('src')
        News.find_or_create_by(title: title) do |news|
          news.name = "GIGAZIN"
          news.short_name = "gigazin"
          news.category = "gigazin"
          news.title = title
          news.favicon = "http://www.google.com/s2/favicons?domain=gigazine.net"
          news.domain = "gigazine.net/"
          news.url = node.css(".boxgrid a").attr('href').to_s
          news.thumbnail = if thumb then thumb.to_s else node.css(".boxgrid a img").attr('data-original').to_s end
          news.date = node.css(".date a").text
          if news.save
            puts 'GIGAZIN -> ' + title
          end
        end
      rescue => e
        puts e
      end
    end
  end

  desc "Curation GIZMODO"
  task :gizmodo => :environment do
    url = "http://www.gizmodo.jp/"
    doc = Nokogiri::HTML(open(url),nil,"utf-8")
    doc.css(".entrylists .entry").each do |node|
      begin
        title = node.css("h2 a").text unless node.css("h2 a").blank?
        unless node.css(".entryinner").blank?
          date = node.css(".entry_data").text
          description = node.css(".entryinner p").text
          description.slice!("続きを読む»").strip
        end
        unless node.css("h2 a").blank?
          News.find_or_create_by(title: title) do |news|
            news.name = "GIZMODO"
            news.short_name = "gizmodo"
            news.category = "gizmodo"
            news.title = title
            news.favicon = "http://www.google.com/s2/favicons?domain=www.gizmodo.jp"
            news.domain = "www.gizmodo.jp/"
            news.date = date
            news.url = node.css(".thumb a").attr('href').to_s unless node.css(".thumb a").blank?
            news.thumbnail = node.css(".thumb a img").attr('src').to_s unless node.css(".thumb a img").blank?
            news.description = description
            news.tag = node.css(".thumb span a").text unless node.css(".thumb").blank?
            if news.save
              puts 'GIZMODO -> ' + title
            end
          end
        end
      rescue => e
        puts e
      end
    end
  end

end
