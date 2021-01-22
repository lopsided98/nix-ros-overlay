
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-core2, roscpp, roslint, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-costmap-queue";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/costmap_queue/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "9bad483c59bab29b4aaf7dd01374727627c68cbf8d2439935b5172b41e09c3da";
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
