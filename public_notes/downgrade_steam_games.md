https://steamcommunity.com/discussions/forum/1/3183487463215080980/

# How to downgrade games with DepotDownloader - How to play old versions of games the right way

I made this post to roughly explain how to download and play an old version of a game that you own on Steam. This can help you out when a feature of a game gets removed, but you updated already and want to revert back to an older version. This is meant more to explain how it's possible, rather than a step-by-step guide. I'm sure there's better guides already on how exactly to do this, but now I already typed all this. This post is long enough already and I don't feel like writing any more, so if something is unclear, just search for "Steam DepotDownloader" on google and in the Steam forums and you will find a lot about it already...

Steam doesn't make this easy or give any hint that this is possible, but you can revert most games back to older versions and play them without ever updating. A couple things upfront:

- downloading older versions requires a third-party open-source tool called DepotDownloader. It should be safe to use, considering that it's open-source. I don't think it would be on Github if it was malware. But whether you trust this tool or not is of course up to you alone.

- You should be comfortable with the filesystem on your PC and know basics of how to use the commandline, otherwise this guide isn't really meant for you. Sorry that Steam doesn't make this easier, but this is the easy way for techies. There might also be a more "user-friendly" way with a nice GUI, but I don't know...

## How-to Download and Play Old Versions of Games

First, right click the game in your library -> Properties -> Updates -> Set it to "Only Update this game when I launch it"

Look up [Steam DepotDownloader](https://github.com/SteamRE/DepotDownloader); this is the CLI tool which enables you to install an old version of a Steam game that you own. The Github page mostly explains how to use it (if it doesn't make sense look up a more noob-friendly guide). Only one additional thing to know: use [SteamDB](steamdb.info) to get the depot ID for a specific older version you want to download, use that ID with depot downloader.

Once you installed the old version of the game follow these relatively simple steps:
1. Create a desktop shortcut
2. Restart Steam in Offline Mode
3. Play the Game from the Desktop Shortcut

## Additional Notes and Tips

**Be sure never to accidentally play an old version of a game when Steam is "Online" or it will update it.**

I would recommend backing up the "old version" of the game by copying all files+folders in the games install location to another folder in a safe place that doesn't get touched by Steam. This way you don't have to re-download it, if you ever update it by mistake. You can simply copy the files+folders back to the install location and you will have the old version back.

You can even use multiple versions of the game this way, just copy the files+folders of the version you want. If you want to frequently switch back and forth between new and old versions, I'd recommend making some shell scripts / python scripts to make this easier.

It all makes sense if you think about how Steam / offline mode and installation of games work. I know it's a bit technical and probably won't help most regular players, but I hope it's still useful to someone!

Just to mention a couple examples for why you might want to play older versions of certain games, here are some games that have content that removed in an update:
- GTA IV - Music was taken out in new version due to licensing expiring
- Mafia 2 - Same thing, music removed
- Tabletop Simulator - LAN mode was removed, newer version is online only

This stuff happens. Ideally, I'd recommend making backups of installation files of games you care about. An external hard drive is good for this purpose.

Obviously this is all kind of pointless for games that require some kind of proprietary backend server to work (for example Rocket League, PUGB, R6 Siege). You won't be able to play those with an old version, unless someone got their hands on the server software and figured out how to replace the official servers in the game's files. Although that sounds nearly impossible, it has happened for some older games...

Good luck getting your old games back.