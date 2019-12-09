
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, geometry-msgs, nav-grid, nav-core2, pluginlib, std-msgs, tf, catkin, roscpp, rosunit, roslint, nav-2d-msgs, nav-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-kinetic-nav-2d-utils";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/nav_2d_utils/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "b8c4c3ffef917591aded6022388b3f40d35803a42d568803e926de007820829b";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs nav-grid nav-core2 pluginlib std-msgs tf roscpp nav-2d-msgs nav-msgs xmlrpcpp ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ geometry-msgs nav-grid nav-core2 pluginlib std-msgs tf roscpp nav-2d-msgs nav-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A handful of useful utility functions for nav_core2 packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
