
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-bhand-controller";
  version = "0.1.2";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/barrett_hand-release/archive/release/kinetic/bhand_controller/0.1.2-0.tar.gz";
    name = "0.1.2-0.tar.gz";
    sha256 = "9d549005a71830ddb6024662bfc5e2202f9f5ca47b0c289964e0f6c0951d1378";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genmsg rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The bhand_controller package is intended to control the Barrett Hand'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
