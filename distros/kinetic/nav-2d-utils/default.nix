
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-2d-msgs, nav-core2, nav-grid, nav-msgs, pluginlib, roscpp, roslint, rostest, rosunit, std-msgs, tf, xmlrpcpp }:
buildRosPackage {
  pname = "ros-kinetic-nav-2d-utils";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/nav_2d_utils/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "984f7a2e774160d1524213e8230a5b86f92f0f078073ca037d6b5442d2aa72c5";
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
