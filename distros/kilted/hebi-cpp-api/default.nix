
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-kilted-hebi-cpp-api";
  version = "3.12.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hebi_cpp_api-release/archive/release/kilted/hebi_cpp_api/3.12.3-2.tar.gz";
    name = "3.12.3-2.tar.gz";
    sha256 = "21e61bc074cfe2693c3d1119c2794bca80c6e42d3b4c3d4d3bc85d05aab34f30";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 package providing access to the HEBI C++ API.";
    license = with lib.licenses; [ asl20 ];
  };
}
