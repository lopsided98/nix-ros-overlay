
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, orocos-kdl, ros-environment, rostest, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-tf2-kdl";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/melodic/tf2_kdl/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "092567486d57feaad61f7b83432dcbd0b3450b189fcc74ec121d71cb57f1edbc";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  checkInputs = [ ros-environment rostest ];
  propagatedBuildInputs = [ eigen orocos-kdl tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''KDL binding for tf2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
