function TwitchEmbed(width,height,channel)
{
    return new Twitch.Embed
    (
        "twitch-embed",
        {
            width: width,
            height: height,
            channel: channel,
            // only needed if your site is also embedded on embed.example.com and othersite.example.com
            parent: ["embed.example.com", "othersite.example.com"]
        }
    );
}