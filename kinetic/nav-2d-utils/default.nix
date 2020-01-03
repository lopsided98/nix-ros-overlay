
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-2d-msgs, nav-core2, nav-grid, nav-msgs, pluginlib, roscpp, roslint, rostest, rosunit, std-msgs, tf, xmlrpcpp }:
buildRosPackage {
  pname = "ros-kinetic-nav-2d-utils";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/nav_2d_utils/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "b8c4c3ffef917591aded6022388b3f40d35803a42d568803e926de007820829b";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ geometry-msgs nav-2d-msgs nav-core2 nav-grid nav-msgs pluginlib roscpp std-msgs tf xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A handful of useful utility functions for nav_core2 packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
