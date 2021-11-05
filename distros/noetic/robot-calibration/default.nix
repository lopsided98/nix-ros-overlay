
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, camera-calibration-parsers, catkin, ceres-solver, code-coverage, control-msgs, cv-bridge, geometry-msgs, gflags, kdl-parser, moveit-msgs, nav-msgs, orocos-kdl, pluginlib, protobuf, robot-calibration-msgs, rosbag, roscpp, sensor-msgs, std-msgs, suitesparse, tf, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-robot-calibration";
  version = "0.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/robot_calibration-release/archive/release/noetic/robot_calibration/0.6.5-1.tar.gz";
    name = "0.6.5-1.tar.gz";
    sha256 = "02482fe8c6e8ed687cc90c1e67bc3469c049544d0cd05a76c7223270f7d5c4f3";
  };

  buildType = "catkin";
  checkInputs = [ code-coverage ];
  propagatedBuildInputs = [ actionlib camera-calibration-parsers ceres-solver control-msgs cv-bridge geometry-msgs gflags kdl-parser moveit-msgs nav-msgs orocos-kdl pluginlib protobuf robot-calibration-msgs rosbag roscpp sensor-msgs std-msgs suitesparse tf tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Calibrate a Robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
