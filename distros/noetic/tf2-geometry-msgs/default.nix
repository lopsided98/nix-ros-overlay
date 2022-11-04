
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, orocos-kdl, python3Packages, ros-environment, rostest, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-tf2-geometry-msgs";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_geometry_msgs/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "0a95161adcce88b73ad19ce5987c66cc6718b22b97e5a24911cc67204d4db02c";
  };

  buildType = "catkin";
  checkInputs = [ ros-environment rostest ];
  propagatedBuildInputs = [ geometry-msgs orocos-kdl python3Packages.pykdl tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_geometry_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
