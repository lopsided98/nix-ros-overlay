
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_nvidia-cuda, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cuda-buffer-backend-msgs, rcutils, rmw, rosidl-buffer }:
buildRosPackage {
  pname = "ros-rolling-cuda-buffer";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_buffer_backends-release/archive/release/rolling/cuda_buffer/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "12bac4cc09a19de9ed58e142e1caf2827ba4fc6026b68d5fa1fb87bf8dbe9179";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_nvidia-cuda cuda-buffer-backend-msgs rcutils rmw rosidl-buffer ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CUDA-backed rosidl::Buffer storage and synchronization utilities,
  including memory pooling, CUDA IPC support, and same-host endpoint locality
  discovery for rosidl::Buffer backends.";
    license = with lib.licenses; [ asl20 ];
  };
}
