# -*- encoding: utf-8 -*-
import scrapy


class BlogSpider(scrapy.Spider):
    name = 'blog_66super'
    allowed_domains = ["https://66super.com"]
    start_urls = [
        "https://66super.com/index.html"
    ]

    def parse(self, response):
        filename = response.url.split("/")[-2]
        with open(filename, 'wb') as f:
            f.write(response.body)
