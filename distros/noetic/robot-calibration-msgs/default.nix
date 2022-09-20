
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-robot-calibration-msgs";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/robot_calibration-release/archive/release/noetic/robot_calibration_msgs/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "89f31ebc8290f8e3470d855fc22436836547759b533c1b33e1d83e9a1fe1a078";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for calibrating a robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
