
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, nav-grid, roslint, nav-core2, catkin, roscpp, nav-2d-msgs, rostest, nav-msgs, xmlrpcpp, std-msgs, tf, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-nav-2d-utils";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/nav_2d_utils/0.2.5-0.tar.gz;
    sha256 = "b8c4c3ffef917591aded6022388b3f40d35803a42d568803e926de007820829b";
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
