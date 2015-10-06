# H99

Trying out the Haskell 99 problem set.

### Running

You could probably install Haskell on you system. My prefered way is through Docker.

```
docker run -v `pwd`:/root/H99 --name ContainerH99 -it <preferred image id> /bin/bash
```
will start up a container called ContainerH99 from your preferred image. I used the official image `haskell`.
It will also mount this repo into /root/H99 in the container.

Later you could simply:
```
docker start ContainerH99
docker attach ContainerH99
```

This way you can run the code from inside the container while actually coding from outside with your favourite editor.

### Timing

In ghci, run:
```
:set +s
```

All functions are now output with time and space consumed.

### Links

Standard Prelude implementation: [https://www.haskell.org/onlinereport/standard-prelude.html]
The Problem set: [https://wiki.haskell.org/99_questions]
