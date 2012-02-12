# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

algo = ScrapingAlgorithm.create("name" => "Aleph", "maintainer" => "asaf.bartov@gmail.com")
ScrapingElement.create("scraping_algorithm_id"=>algo, "marc_key"=>"245", "hash_key"=>"TitleSubtitleResponsibility")
ScrapingElement.create("scraping_algorithm_id"=>algo, "marc_key"=>"260", "hash_key"=>"PlacePublisherDate")
ScrapingElement.create("scraping_algorithm_id"=>algo, "marc_key"=>"250", "hash_key"=>"Edition")
CitableSite.create("domain" => "aleph.nkp.cz", "scraping_algorithm_id" => algo)
CitationTemplate.create("name" => "Czech Wikipedia", "domain" => "cs.wikipedia.org", "pattern" => "{{Citace monografie | příjmení = @@WIKICITE:last_name@@ | jméno = @@WIKICITE:first_name@@ | titul = @@WIKICITE:title@@ | vydavatel = @@WIKICITE:publisher@@ | místo = @@WIKICITE:location@@ | rok = @@WIKICITE:year@@ | počet stran = @@WIKICITE:number_of_pages@@ | strany = @@WIKICITE:pages@@ | isbn = @@WIKICITE:isbn@@ | jazyk = @@WIKICITE:language@@ }}")

