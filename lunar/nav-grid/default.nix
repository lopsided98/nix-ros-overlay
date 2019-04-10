
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosunit, roslint }:
buildRosPackage {
  pname = "ros-lunar-nav-grid";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/lunar/nav_grid/0.2.5-0.tar.gz;
    sha256 = "ed791fe320fe3a08fa226e2ee803f94ba6af04b81b7f0b715ef87add7a5d3c31";
  };

  checkInputs = [ rosunit roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A templatized interface for overlaying a two dimensional grid on the world.'';
    #license = lib.licenses.BSD;
  };
}
