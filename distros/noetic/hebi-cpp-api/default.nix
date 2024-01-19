
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen }:
buildRosPackage {
  pname = "ros-noetic-hebi-cpp-api";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/HebiRobotics/hebi_cpp_api_ros-release/archive/release/noetic/hebi_cpp_api/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "2979c3467c126931c36aa7a0a662ccddc15447159eed6e568a4cbf446e2f1d55";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS package providing access to the HEBI C++ API.'';
    license = with lib.licenses; [ "HEBI-C-Software-License-https-www.hebirobotics.com-softwarelicense-" ];
  };
}
