
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, nav-core2, catkin, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-lunar-costmap-queue";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/lunar/costmap_queue/0.2.5-0.tar.gz;
    sha256 = "bf1da22bff1b436f92367256e5363602456690658e101dcd3c1491b3c31830db";
  };

  buildInputs = [ nav-core2 roscpp ];
  checkInputs = [ rosunit roslint ];
  propagatedBuildInputs = [ nav-core2 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tool for iterating through the cells of a costmap to find the closest distance to a subset of cells.'';
    #license = lib.licenses.BSD;
  };
}
