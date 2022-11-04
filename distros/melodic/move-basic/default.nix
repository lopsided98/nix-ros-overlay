
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, move-base-msgs, nav-core, roscpp, rostest, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-move-basic";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/move_basic-release/archive/release/melodic/move_basic/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "e7aa6c6ce08b3a9f4fd248dfa9a8763cbd58f5f11ea6fca68e631b6a5c41b372";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs dynamic-reconfigure geometry-msgs message-generation message-runtime move-base-msgs nav-core roscpp rostest sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
