
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, xmlrpcpp, nav-grid, nav-core2, pluginlib, std-msgs, tf, catkin, roscpp, rosunit, roslint, tf2-geometry-msgs, nav-2d-msgs, nav-msgs, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-nav-2d-utils";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/nav_2d_utils/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "8af155a85dbda95feb762385cd888cd2d9296f39e444549f51d99872303e5e20";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs nav-grid nav-core2 pluginlib std-msgs tf roscpp tf2-geometry-msgs nav-2d-msgs nav-msgs xmlrpcpp tf2-ros ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ geometry-msgs nav-grid nav-core2 pluginlib std-msgs tf roscpp tf2-geometry-msgs nav-2d-msgs nav-msgs xmlrpcpp tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A handful of useful utility functions for nav_core2 packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
