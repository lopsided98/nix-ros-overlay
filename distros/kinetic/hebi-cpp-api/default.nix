
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen }:
buildRosPackage {
  pname = "ros-kinetic-hebi-cpp-api";
  version = "3.2.0-r2";

  src = fetchurl {
    url = "https://github.com/HebiRobotics/hebi_cpp_api_ros-release/archive/release/kinetic/hebi_cpp_api/3.2.0-2.tar.gz";
    name = "3.2.0-2.tar.gz";
    sha256 = "da06c66ce1d7708ad33aafb8846b2aa3e59351beb5d54f2c826c6c7e9e82f1c7";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS package providing access to the HEBI C++ API.'';
    license = with lib.licenses; [ "HEBI C++ Software License (https://www.hebirobotics.com/softwarelicense)" ];
  };
}
