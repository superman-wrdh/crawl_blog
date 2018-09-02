# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html
from crawal_blog.items import Article, ArticleSummary


class CrawalBlogPipeline(object):
    def process_item(self, item, spider):
        if isinstance(item, Article):
            pass
        if isinstance(item, ArticleSummary):
            pass
        return item
