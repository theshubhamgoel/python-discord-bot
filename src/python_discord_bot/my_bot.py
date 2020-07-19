import os
import random

import discord
from dotenv import load_dotenv

print(TOKEN)

client = discord.Client()
@client.event
async def on_ready():
    print(f'{client.user} has connected to Discord!')

@client.event
async def on_message(message):
    if message.author == client.user:
        return

    response_data = [
        'I\'m the human form of the 💯 emoji.',
        'Bingpot!',
        (
            'Cool. Cool cool cool cool cool cool cool, '
            'no doubt no doubt no doubt no doubt.'
        ),
        'Bot can also talk.'
    ]

    if message.content == '!bot':
        response = random.choice(response_data)
        await message.channel.send(response)

client.run(TOKEN)
