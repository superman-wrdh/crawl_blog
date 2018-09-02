# -*- encoding: utf-8 -*-
import scrapy


class BlogSpider(scrapy.Spider):

    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.base_url = 'https://66super.com'

    name = 'blog_66super'
    allowed_domains = ["https://66super.com"]
    start_urls = [
        "https://66super.com/index.html",
        "https://66super.com/index.html?page=2&",
        "https://66super.com/index.html?page=3&",
        "https://66super.com/index.html?page=4&",
    ]

    def parse(self, response):
        filename = response.url.split("/")[-2] + ".html"
        with open(filename, 'wb') as f:
            f.write(response.body)
