# helloworld.py
from time import sleep
import random

from nameko.rpc import rpc


class GreetingService:
    name = "greeting_service"

    @rpc
    def hello(self, name):
        sleep(5 + random.randrange(10))
        return "Hello, {}!".format(name)
