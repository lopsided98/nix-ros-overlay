
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cuda-buffer-backend-msgs, cudaPackages, rcutils, rmw, rosidl-buffer }:
buildRosPackage {
  pname = "ros-lyrical-cuda-buffer";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_buffer_backends-release/archive/release/lyrical/cuda_buffer/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "53ff6ea45f8166b2c3f2385da29cd0c9f2fcb8e1efc8d33ce07c0dec7637e772";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cuda-buffer-backend-msgs cudaPackages.cudatoolkit rcutils rmw rosidl-buffer ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CUDA-backed rosidl::Buffer storage and synchronization utilities,
  including memory pooling, CUDA IPC support, and same-host endpoint locality
  discovery for rosidl::Buffer backends.";
    license = with lib.licenses; [ asl20 ];
  };
}
