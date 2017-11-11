# docker_spawner
Utility scripts to serve docker container factory: one connects and gets personal docker container.

This repo can be used to host local exploitation CTF challenges e.g. for workshops.

I don't really recommend using it for real CTFs.

For real ctf hosting, you should probably research either [setting capabilities](https://docs.docker.com/engine/reference/run/#runtime-privilege-and-linux-capabilities) or probably even better - use [nsjail](https://github.com/google/nsjail) (for this you might want to look at [my unofficial nsjail docker image](https://hub.docker.com/r/disconnect3d/nsjail/))

### HowTo

This requires `socat` to be installed. After that you can prepare directory with tasks in `./tasks` and then launch `./host.sh`.

This will build docker image called `ctf_workshops` and then serve server through socat on port 4444.

After connecting to the server it will spawn a docker container based on `ctf_workshops` image.

The image consists some tooling that might be needed for exploitation/pwn challenges - to see what exactly, just look into `Dockerfile`.
