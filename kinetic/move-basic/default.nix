
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, std-msgs, actionlib, catkin, tf2, tf2-geometry-msgs, nav-core, actionlib-msgs, visualization-msgs, roscpp, tf2-ros, move-base-msgs }:
buildRosPackage {
  pname = "ros-kinetic-move-basic";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/move_basic-release/archive/release/kinetic/move_basic/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "96b09fbf7dc2104408ebd2042b9008d315dd528525564789aa8c7a5bb5701ee2";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs actionlib tf2 tf2-geometry-msgs nav-core actionlib-msgs visualization-msgs roscpp tf2-ros move-base-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs actionlib roscpp tf2-geometry-msgs nav-core actionlib-msgs visualization-msgs tf2 tf2-ros move-base-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
