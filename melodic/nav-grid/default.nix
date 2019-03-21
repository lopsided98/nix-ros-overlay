
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosunit, roslint }:
buildRosPackage {
  pname = "ros-melodic-nav-grid";
  version = "0.2.5-r1";

  src = fetchurl {
    url = https://github.com/DLu/robot_navigation-release/archive/release/melodic/nav_grid/0.2.5-1.tar.gz;
    sha256 = "e545bfa545436be95ac4b293fbc3026d19714fde8b00ad3d9df8a508ca34d141";
  };

  checkInputs = [ rosunit roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A templatized interface for overlaying a two dimensional grid on the world.'';
    #license = lib.licenses.BSD;
  };
}
