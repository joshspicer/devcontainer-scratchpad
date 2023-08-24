Utiltizes [experiental_buildkit_source_policy](https://docs.docker.com/build/building/env-vars/#experimental_buildkit_source_policy) to restrict the source of the build context to a specific directory.  For allow/deny rules, [the last matching rule wins](https://github.com/moby/buildkit/blob/fdacdb78e93af76b0b4e53bfe6a1514fba34a378/sourcepolicy/engine.go#L114).


Experimental policy (from buildkit) isn't embedded in docker until `v24` (ie buildkit `v0.11.0`).  Can get around this by running a [remote buildkit bulider from the master branch](example_configs/allowed).

## References

- https://docs.docker.com/build/buildkit/toml-configuration/
- https://docs.docker.com/config/daemon/systemd/
- https://docs.docker.com/engine/extend/
- https://docs.docker.com/build/building/env-vars/#experimental_buildkit_source_policy