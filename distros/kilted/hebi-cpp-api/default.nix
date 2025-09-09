
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-kilted-hebi-cpp-api";
  version = "3.13.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hebi_cpp_api-release/archive/release/kilted/hebi_cpp_api/3.13.1-2.tar.gz";
    name = "3.13.1-2.tar.gz";
    sha256 = "1b3557c1c75ee6480658ac7cf3f5f71410e54e2b75a8adb00e202da49a7933fd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 package providing access to the HEBI C++ API.";
    license = with lib.licenses; [ asl20 ];
  };
}
