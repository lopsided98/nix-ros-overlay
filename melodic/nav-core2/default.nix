
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-2d-msgs, nav-grid, roslint, rosunit, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-nav-core2";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/nav_core2/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "94c6fcca1da21c14adf210a38a1e83c82fb7d3e59818b16004361800809031d9";
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
