#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names_114 = EveryPolitician::Wikidata.wikipedia_xpath( 
  url: 'https://en.wikipedia.org/wiki/114th_United_States_Congress',
  after: '//span[@id="Members"]',
  before: '//span[@id="House_of_Representatives_3"]',
  xpath: './/li//a[not(@class="new")]/@title',
)

EveryPolitician::Wikidata.scrape_wikidata(names: { en: names_114 })
