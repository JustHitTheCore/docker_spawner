# docker_spawner
Utility scripts to serve docker container factory: one connects and gets personal docker container.

This repo can be used to host local exploitation CTF challenges e.g. for workshops.

I don't really recommend using it for real CTFs.

For real ctf hosting, you should probably research either [setting capabilities](https://docs.docker.com/engine/reference/run/#runtime-privilege-and-linux-capabilities) or probably even better - use [nsjail](https://github.com/google/nsjail) (for this you might want to look at [my unofficial nsjail docker image](https://hub.docker.com/r/disconnect3d/nsjail/))
