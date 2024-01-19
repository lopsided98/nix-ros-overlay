
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, move-base-msgs, nav-core, proj, roscpp, rostest, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-move-basic";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/move_basic-release/archive/release/noetic/move_basic/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "b333b99887c409c0efcf50bc80a353b7de1df597005a83b27b6a6dc5b38f0859";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs dynamic-reconfigure geometry-msgs message-generation message-runtime move-base-msgs nav-core proj roscpp rostest sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
