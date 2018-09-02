# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class CrawalBlogItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    pass


class ArticleSummary(scrapy.Item):
    article_title = scrapy.Field()
    article_summary = scrapy.Field()
    article_content = scrapy.Field()
    article_created_time = scrapy.Field()
    article_viewed = scrapy.Field()


class Article(scrapy.Item):
    article_title = scrapy.Field()
    article_summary = scrapy.Field()
    article_type = scrapy.Field()
    article_content = scrapy.Field()
    article_keyword = scrapy.Field()
    article_created_time = scrapy.Field()
    article_viewed = scrapy.Field()
