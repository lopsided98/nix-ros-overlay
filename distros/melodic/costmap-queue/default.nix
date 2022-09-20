
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-core2, roscpp, roslint, rosunit }:
buildRosPackage {
  pname = "ros-melodic-costmap-queue";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/costmap_queue/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "d2cff3966f985060ab8a5a3b23c271d265d105a5ea3511b59d5717409cb91eab";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rosunit ];
  propagatedBuildInputs = [ nav-core2 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tool for iterating through the cells of a costmap to find the closest distance to a subset of cells.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
