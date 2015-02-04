# Projects currently on Whale (hopefully this list is up-to-date)

 + Minecraft Server (/srv/mc_server/):
     * Port: 25565 (the default one for minecraft)
     * Setup: Download (e.g. via `wget`) the minecraft server files (from the [official site](https://minecraft.net/download)). Copy the `minecraft/` files over and run the server file using the pre-written bash script [`./start.sh`](minecraft/start.sh).
         - Note: Make sure to update version of minecraft in `start.sh` to the version of minecraft downloaded (just match the two file names).
 + Web Server (/srv/whale_site/):
     * Port: 7500 (redirects traffic from port 80 to port 7500 with name-based virtual hosting)
     * Setup: Clone the [repo](https://github.com/WheatonWHALE/whaleweb). Symlink the Apache sites-available/000-default.conf to the repo's version, so it correctly forwards traffic from 80 to whichever site (staging or real) based on url. Run `npm install`, `sudo npm install -g forever` and `forever start web.js`.
 + Staging Web Server (/srv/staging_whale_site/):
     * Port: 7501 (redirects traffic from port 80 to port 7501 name-based virtual hosting)
     * Setup: See Web Server. Run `npm install`, `sudo npm install -g forever` and `forever start staging.js`.
 + Ventrillo (/srv/ventsrv/):
     * Port: 3784 (the default one for vent)
     * Setup: Download (e.g. via `wget`) ventrilo (from the [official ventrillo site](http://www.ventrilo.com/download.php)) into the /srv/ventsrv folder, and then run it in daemon mode with `./ventrilo_srv -d`.
