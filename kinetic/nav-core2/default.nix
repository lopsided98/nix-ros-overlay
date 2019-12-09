
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav-grid, tf, catkin, rosunit, roslint, nav-2d-msgs }:
buildRosPackage {
  pname = "ros-kinetic-nav-core2";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/nav_core2/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "e31fa1f8808b4f7e21de3c59dc446e67483f870178ab6f0d937a0ad486b30e73";
  };

  buildType = "catkin";
  buildInputs = [ nav-grid tf nav-2d-msgs ];
  checkInputs = [ roslint rosunit ];
  propagatedBuildInputs = [ nav-grid tf nav-2d-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interfaces for Costmap, LocalPlanner and GlobalPlanner. Replaces nav_core.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
