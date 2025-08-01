
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-humble-hebi-cpp-api";
  version = "3.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hebi_cpp_api-release/archive/release/humble/hebi_cpp_api/3.13.0-1.tar.gz";
    name = "3.13.0-1.tar.gz";
    sha256 = "fcc5ddd5fd76c50ebfe8c99122275d8ffad4eee6051f43b570cce104205ad9ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 package providing access to the HEBI C++ API.";
    license = with lib.licenses; [ asl20 ];
  };
}
