
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-lyrical-hebi-cpp-api";
  version = "3.16.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hebi_cpp_api-release/archive/release/lyrical/hebi_cpp_api/3.16.0-3.tar.gz";
    name = "3.16.0-3.tar.gz";
    sha256 = "d595b198c4dabf72928b4c33bb61f7d328e9dcd14ca82a405647284e456d9056";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 package providing access to the HEBI C++ API.";
    license = with lib.licenses; [ asl20 ];
  };
}
