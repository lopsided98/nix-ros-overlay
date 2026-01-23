
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-kilted-hebi-cpp-api";
  version = "3.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hebi_cpp_api-release/archive/release/kilted/hebi_cpp_api/3.16.0-1.tar.gz";
    name = "3.16.0-1.tar.gz";
    sha256 = "29f3192ab0a387f3d8a056fee69fda6e83d14f5cbb92f6b0f8604898aff97e4f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 package providing access to the HEBI C++ API.";
    license = with lib.licenses; [ asl20 ];
  };
}
