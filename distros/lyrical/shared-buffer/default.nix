
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rcutils, rmw, rosidl-buffer, shared-buffer-backend-msgs }:
buildRosPackage {
  pname = "ros-lyrical-shared-buffer";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/shmem_buffer_backend-release/archive/release/lyrical/shared_buffer/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "cc6581e1c0f171099a226d5fb895dc17b7147fada36abe5a248823043f44f7e6";
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
