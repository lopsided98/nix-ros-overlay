
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, message-runtime, std-msgs, catkin, actionlib-msgs, message-generation }:
buildRosPackage {
  pname = "ros-melodic-robot-calibration-msgs";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/robot_calibration-release/archive/release/melodic/robot_calibration_msgs/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "aa425371dddddf731cb4c5397cecc801e55a9f3f92c05475834f09a81a095a89";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs actionlib-msgs message-generation ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs actionlib-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for calibrating a robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
