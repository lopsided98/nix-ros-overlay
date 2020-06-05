
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-2d-msgs, nav-core2, nav-grid, nav-msgs, pluginlib, roscpp, roslint, rostest, rosunit, std-msgs, tf, tf2-geometry-msgs, tf2-ros, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-nav-2d-utils";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/nav_2d_utils/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "d959640a5d0d9e8ae40dc13fa7cca407dadd13a682e86d48777d2a9a1524c92c";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ geometry-msgs nav-2d-msgs nav-core2 nav-grid nav-msgs pluginlib roscpp std-msgs tf tf2-geometry-msgs tf2-ros xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A handful of useful utility functions for nav_core2 packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
