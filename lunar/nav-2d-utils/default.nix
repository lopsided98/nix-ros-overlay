
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, nav-grid, roslint, nav-core2, catkin, roscpp, nav-2d-msgs, rostest, nav-msgs, xmlrpcpp, std-msgs, tf, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-nav-2d-utils";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/lunar/nav_2d_utils/0.2.5-0.tar.gz;
    sha256 = "5c41027bb585befb65d97fb27ed75dcc3b31cc85ecc85d7ac5aee923d7864273";
  };

  buildInputs = [ pluginlib nav-grid nav-core2 roscpp nav-msgs xmlrpcpp std-msgs tf nav-2d-msgs geometry-msgs ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ pluginlib nav-grid nav-core2 roscpp nav-msgs xmlrpcpp std-msgs tf nav-2d-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A handful of useful utility functions for nav_core2 packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
