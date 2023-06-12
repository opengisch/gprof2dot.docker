# gprof2dot wrapped in a docker image ready for use

```bash
docker build -t gprof2dot:local .
```

```bash
docker run --rm -v <path-to-data>:/data gprof2dot:local
```

This produces for every `.prof` file a corresponding `.png` rendering.


