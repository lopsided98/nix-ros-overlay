
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-robot-calibration-msgs";
  version = "0.6.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/robot_calibration-release/archive/release/melodic/robot_calibration_msgs/0.6.0-0.tar.gz;
    sha256 = "ea0ffb952c39266c63a6a96dea7b3763b0c36c4b28363c08d41171ed1a021097";
  };

  buildInputs = [ message-generation actionlib-msgs std-msgs sensor-msgs geometry-msgs ];
  propagatedBuildInputs = [ message-runtime actionlib-msgs std-msgs sensor-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for calibrating a robot'';
    #license = lib.licenses.Apache2;
  };
}
