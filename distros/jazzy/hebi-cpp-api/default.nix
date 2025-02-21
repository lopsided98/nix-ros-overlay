
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-jazzy-hebi-cpp-api";
  version = "3.12.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hebi_cpp_api-release/archive/release/jazzy/hebi_cpp_api/3.12.3-1.tar.gz";
    name = "3.12.3-1.tar.gz";
    sha256 = "4c6816d54affd2ebb037d18457737cbf9a2d54faecad3f1b666846f957f960ca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 package providing access to the HEBI C++ API.";
    license = with lib.licenses; [ asl20 ];
  };
}
