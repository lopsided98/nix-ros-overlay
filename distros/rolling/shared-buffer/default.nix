
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rcutils, rmw, rosidl-buffer, shared-buffer-backend-msgs }:
buildRosPackage {
  pname = "ros-rolling-shared-buffer";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/shmem_buffer_backend-release/archive/release/rolling/shared_buffer/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "73a6f3fc51f5338644229babab078a275a0fe6b5846abb8d994f25801f161045";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcutils rmw rosidl-buffer shared-buffer-backend-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared-memory rosidl::Buffer storage, and same-host
   endpoint locality discovery for rosidl::Buffer backends.";
    license = with lib.licenses; [ asl20 ];
  };
}
