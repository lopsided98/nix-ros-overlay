
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, orocos-kdl, ros-environment, rostest, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-tf2-kdl";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_kdl/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "e8a6819c8286039d6b2c03b6c1138464fe094ec6551211f29ccc0c976c83d0db";
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
