
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-2d-msgs, nav-grid, roslint, rosunit, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-nav-core2";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/nav_core2/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "d3d6c85b14aa60aa7c0c75518fbad88d106a9b60b24b36c963a6008abb7ac030";
  };

  buildType = "catkin";
  checkInputs = [ roslint rosunit ];
  propagatedBuildInputs = [ nav-2d-msgs nav-grid tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interfaces for Costmap, LocalPlanner and GlobalPlanner. Replaces nav_core.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
