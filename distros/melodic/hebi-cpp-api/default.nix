
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen }:
buildRosPackage {
  pname = "ros-melodic-hebi-cpp-api";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/HebiRobotics/hebi_cpp_api_ros-release/archive/release/melodic/hebi_cpp_api/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "59ee5b1a8ff5e9421a71c6a0530e5f6b2708b3307aa38a8b451c58210acc4489";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS package providing access to the HEBI C++ API.'';
    license = with lib.licenses; [ "HEBI C++ Software License (https://www.hebirobotics.com/softwarelicense)" ];
  };
}
