
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-core2, roscpp, roslint, rosunit }:
buildRosPackage {
  pname = "ros-noetic-costmap-queue";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/costmap_queue/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "7870f42776a61cf4b3e5b610ac897aadeb72a007c942e199df365d86184b1e5a";
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
