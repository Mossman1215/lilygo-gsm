from registry.fedoraproject.org/fedora-toolbox:42

RUN sudo dnf install -y git wget flex bison gperf python3 cmake ninja-build ccache dfu-util libusbx gcc clang cargo perl-core openssl-devel

RUN cargo install cargo-generate
RUN cargo install ldproxy
RUN cargo install espup --locked
RUN cargo install espflash
RUN cargo install cargo-espflash
RUN espup install