
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-2d-msgs, nav-core2, nav-grid, nav-msgs, pluginlib, roscpp, roslint, rostest, rosunit, std-msgs, tf, tf2-geometry-msgs, tf2-ros, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-nav-2d-utils";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/nav_2d_utils/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "cd39cac06e4ec5f6162f5059db7a5fed9118b6c7d15649e3b3e2b5531cdf1563";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ geometry-msgs nav-2d-msgs nav-core2 nav-grid nav-msgs pluginlib roscpp std-msgs tf tf2-geometry-msgs tf2-ros xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A handful of useful utility functions for nav_core2 packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
