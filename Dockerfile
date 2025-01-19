FROM debian:bookworm

ENV PATH="$PATH:/zig"

# Install packages.
RUN apt-get update && apt-get install -y \
    curl \
    git \
    git-lfs \
    openssh-client \
    wget \
    xz-utils \
    && rm -rf /var/lib/apt/lists/*

# Install zig.
RUN wget https://ziglang.org/download/0.13.0/zig-linux-x86_64-0.13.0.tar.xz \
    && tar -xf zig-linux-x86_64-0.13.0.tar.xz \
    && mv zig-linux-x86_64-0.13.0 zig \
    && rm zig-linux-x86_64-0.13.0.tar.xz
