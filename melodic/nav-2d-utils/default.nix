
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, nav-grid, tf2-geometry-msgs, roslint, nav-core2, catkin, tf2-ros, roscpp, rostest, nav-msgs, xmlrpcpp, std-msgs, rosunit, tf, nav-2d-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-nav-2d-utils";
  version = "0.2.5-r1";

  src = fetchurl {
    url = https://github.com/DLu/robot_navigation-release/archive/release/melodic/nav_2d_utils/0.2.5-1.tar.gz;
    sha256 = "8af155a85dbda95feb762385cd888cd2d9296f39e444549f51d99872303e5e20";
  };

  buildInputs = [ pluginlib tf2-geometry-msgs nav-grid nav-core2 roscpp tf2-ros nav-msgs xmlrpcpp std-msgs tf nav-2d-msgs geometry-msgs ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ pluginlib tf2-geometry-msgs nav-grid nav-core2 roscpp tf2-ros nav-msgs xmlrpcpp std-msgs tf nav-2d-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A handful of useful utility functions for nav_core2 packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
