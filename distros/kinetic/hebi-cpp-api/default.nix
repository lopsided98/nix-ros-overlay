
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen }:
buildRosPackage {
  pname = "ros-kinetic-hebi-cpp-api";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/HebiRobotics/hebi_cpp_api_ros-release/archive/release/kinetic/hebi_cpp_api/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "18e02a9e08359f8c085da9c01970533fb81e932c27b48adb00b42ffc7ee96e3f";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS package providing access to the HEBI C++ API.'';
    license = with lib.licenses; [ "HEBI C++ Software License (https://www.hebirobotics.com/softwarelicense)" ];
  };
}
