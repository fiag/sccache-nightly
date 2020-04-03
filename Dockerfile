FROM rustlang/rust:nightly-buster

RUN set -eux; \
    cargo install sccache --features=redis; \
    rm -rf $CARGO_HOME/registry
