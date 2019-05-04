
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen }:
buildRosPackage {
  pname = "ros-kinetic-hebi-cpp-api";
  version = "2.0.2";

  src = fetchurl {
    url = https://github.com/HebiRobotics/hebi_cpp_api_ros-release/archive/release/kinetic/hebi_cpp_api/2.0.2-0.tar.gz;
    sha256 = "e9d0e1e06d85612d7b04f5d2d41ffdd654e5957285e51078228fc36f265b6423";
  };

  buildInputs = [ cmake-modules eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS package providing access to the HEBI C++ API.'';
    license = with lib.licenses; [ "HEBI C++ Software License (https://www.hebirobotics.com/softwarelicense)" ];
  };
}
