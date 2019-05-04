
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-robot-calibration-msgs";
  version = "0.6.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/robot_calibration-release/archive/release/kinetic/robot_calibration_msgs/0.6.0-0.tar.gz;
    sha256 = "848c25e4cff02d007cce4da5e235fc75dc39d41a6c4fdd3278884ff297d750e9";
  };

  buildInputs = [ actionlib-msgs sensor-msgs message-generation std-msgs geometry-msgs ];
  propagatedBuildInputs = [ actionlib-msgs sensor-msgs message-runtime std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for calibrating a robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
