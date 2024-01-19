
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, orocos-kdl, ros-environment, rostest, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-tf2-kdl";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_kdl/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "f706d2ab7d6be921dc85a10c0d7eb656d60d00b00332a0b4388c470b5dbe9818";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  checkInputs = [ ros-environment rostest ];
  propagatedBuildInputs = [ eigen orocos-kdl tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''KDL binding for tf2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
