# sccache-nightly

# Usage

```dockerfile
FROM fiag/sccache-nightly:latest AS cargo-build

RUN set -eux; \
    export RUSTC_WRAPPER=sccache; \
    export SCCACHE_REDIS="redis://your_redis:6379/"; \
    cargo build --release --verbose; \
```
