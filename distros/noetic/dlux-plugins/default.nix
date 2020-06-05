
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dlux-global-planner, global-planner-tests, nav-core2, nav-grid, pluginlib, roslint, rostest }:
buildRosPackage {
  pname = "ros-noetic-dlux-plugins";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/dlux_plugins/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "44592d2b8b60300cd4cb323354628e6fbf0b1bca75f5dcfb7e12ff3c3f811128";
  };

  buildType = "catkin";
  checkInputs = [ global-planner-tests roslint rostest ];
  propagatedBuildInputs = [ dlux-global-planner nav-core2 nav-grid pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementation of dlux_global_planner plugin interfaces.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
