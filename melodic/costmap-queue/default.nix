
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-core2, roscpp, roslint, rosunit }:
buildRosPackage {
  pname = "ros-melodic-costmap-queue";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/costmap_queue/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "12cc3931e8f432c3951f95fd4379597f05ec41815ccc9aea7da7c3c9a4a3839b";
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
