
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-humble-hebi-cpp-api";
  version = "3.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hebi_cpp_api-release/archive/release/humble/hebi_cpp_api/3.15.0-1.tar.gz";
    name = "3.15.0-1.tar.gz";
    sha256 = "84e69fc71b856135e1b5753babbae1eca22d511fd633c9795b80dac0c5604a4b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 package providing access to the HEBI C++ API.";
    license = with lib.licenses; [ asl20 ];
  };
}
