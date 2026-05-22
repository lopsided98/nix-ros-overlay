
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_nvidia-cuda, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cuda-buffer-backend-msgs, rcutils, rmw, rosidl-buffer }:
buildRosPackage {
  pname = "ros-rolling-cuda-buffer";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_buffer_backends-release/archive/release/rolling/cuda_buffer/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "5e1a4549566804dfa83dbc96c99a17b17eb096b513cf64f5a08c37cefba0682a";
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
