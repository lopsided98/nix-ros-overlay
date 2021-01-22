
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, move-base-msgs, nav-core, roscpp, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-move-basic";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/move_basic-release/archive/release/kinetic/move_basic/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "96b09fbf7dc2104408ebd2042b9008d315dd528525564789aa8c7a5bb5701ee2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs move-base-msgs nav-core roscpp sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
