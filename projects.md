# Projects currently on Whale (hopefully this list is up-to-date)

 + Minecraft Server (/srv/mc_server/):
     * Port: 25565 (the default one for minecraft)
     * Setup: Download (e.g. via `wget`) the minecraft server files (from the [official site](https://minecraft.net/download)) and run the server file using the pre-written bash script [`start.sh`](minecraft/start.sh) (found in this repo, has to be copied over into minecraft server folder).
         - Note: Make sure to update version of minecraft in the bash file to the version of minecraft downloaded (just match the two file names).
 + Web Server (/srv/whale_site/):
     * Port: 7500 (must redirect traffic from port 80 to port 7500)
         - I (Bryan) forgot which command was used to accomplish this. It used to be the `iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 7500` command as seen in the rc.local from this repo, but I have a vague memory that the method of forwarding was changed (possibly in Apache config files) to allow for a staging site also on port 80 (name-based forwarding). Something to figure out.
     * Setup: Clone the [repo](https://github.com/WheatonWHALE/whaleweb). Set up the Apache so it correctly forwards traffic from 80 to whichever site (staging or real) based on url.
 + Staging Web Server (/srv/staging_whale_site/):
     * Port: 7501 (must redirect traffic from port 80 to port 7501)
     * Setup: See Web Server.
 + Ventrillo (/srv/ventsrv/):
     * Port: 3784 (the default one for vent)
     * Setup: Download (e.g. via `wget`) ventrilo (from the [official ventrillo site](http://www.ventrilo.com/download.php)) into the /srv/ventsrv folder, and then run it in daemon mode with `./ventrilo_srv -d`.
