
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, camera-calibration-parsers, catkin, ceres-solver, code-coverage, control-msgs, cv-bridge, eigen, geometric-shapes, geometry-msgs, gflags, kdl-parser, moveit-msgs, nav-msgs, orocos-kdl, pluginlib, protobuf, robot-calibration-msgs, rosbag, roscpp, sensor-msgs, std-msgs, suitesparse, tf, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-robot-calibration";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/robot_calibration-release/archive/release/noetic/robot_calibration/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "774948a55ecaceee2cf1036ad3088b6766f48b339a713b2eaaea3ed5b200c5f4";
  };

  buildType = "catkin";
  buildInputs = [ catkin eigen ];
  checkInputs = [ code-coverage ];
  propagatedBuildInputs = [ actionlib camera-calibration-parsers ceres-solver control-msgs cv-bridge geometric-shapes geometry-msgs gflags kdl-parser moveit-msgs nav-msgs orocos-kdl pluginlib protobuf robot-calibration-msgs rosbag roscpp sensor-msgs std-msgs suitesparse tf tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Calibrate a Robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
