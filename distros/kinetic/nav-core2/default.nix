
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-2d-msgs, nav-grid, roslint, rosunit, tf }:
buildRosPackage {
  pname = "ros-kinetic-nav-core2";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/nav_core2/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "b3319ad6c2d9f6237cd54d78b31c4394c3876c5a2f5aee61c8adfc023aaf8640";
  };

  buildType = "catkin";
  checkInputs = [ roslint rosunit ];
  propagatedBuildInputs = [ nav-2d-msgs nav-grid tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interfaces for Costmap, LocalPlanner and GlobalPlanner. Replaces nav_core.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
