
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-core2, roscpp, roslint, rosunit }:
buildRosPackage {
  pname = "ros-noetic-costmap-queue";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/costmap_queue/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "f500e0fa9d62496b20cc05bf993c687fe429f28eb259ec20d30fcc4ce12bce48";
  };

  buildType = "catkin";
  checkInputs = [ roslint rosunit ];
  propagatedBuildInputs = [ nav-core2 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tool for iterating through the cells of a costmap to find the closest distance to a subset of cells.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
