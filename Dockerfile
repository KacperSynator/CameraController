FROM kakkosbp/camera-controller_image_base:latest as builder

# Install Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

# Set the working directory inside the container
WORKDIR /workspace

# Copy the project files into the container
COPY ./camera_controller /workspace

# Build the application code
RUN cargo build

# Set the entrypoint
CMD cargo run
