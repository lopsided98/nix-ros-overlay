
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-geometry-msgs, actionlib-msgs, sensor-msgs, catkin, nav-core, tf2-ros, roscpp, move-base-msgs, tf2, actionlib, std-msgs, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-move-basic";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/UbiquityRobotics-release/move_basic-release/archive/release/kinetic/move_basic/0.3.2-0.tar.gz;
    sha256 = "96b09fbf7dc2104408ebd2042b9008d315dd528525564789aa8c7a5bb5701ee2";
  };

  propagatedBuildInputs = [ tf2-geometry-msgs actionlib-msgs sensor-msgs nav-core roscpp tf2-ros move-base-msgs tf2 actionlib std-msgs visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ tf2-geometry-msgs actionlib-msgs sensor-msgs nav-core catkin roscpp tf2-ros move-base-msgs tf2 actionlib std-msgs visualization-msgs geometry-msgs ];

  meta = {
    description = ''Simple navigation package'';
    #license = lib.licenses.BSD;
  };
}
