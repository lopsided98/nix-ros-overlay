
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, actionlib, tf, geometry-msgs, robot-calibration-msgs, suitesparse, gflags, camera-calibration-parsers, ceres-solver, orocos-kdl, control-msgs, tf2-geometry-msgs, rosbag, catkin, tf2-ros, nav-msgs, std-msgs, moveit-msgs, protobuf, roscpp, visualization-msgs, kdl-parser, pluginlib, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-robot-calibration";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/robot_calibration-release/archive/release/kinetic/robot_calibration/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "d08557f75a04416fdccd625d938b56fbdc1ebf95107834fa4500e601749fad6c";
  };

  buildType = "catkin";
  buildInputs = [ cv-bridge actionlib tf robot-calibration-msgs geometry-msgs suitesparse gflags camera-calibration-parsers ceres-solver orocos-kdl tf2-geometry-msgs control-msgs rosbag tf2-ros nav-msgs std-msgs moveit-msgs protobuf roscpp visualization-msgs kdl-parser pluginlib sensor-msgs ];
  propagatedBuildInputs = [ cv-bridge actionlib tf robot-calibration-msgs geometry-msgs suitesparse camera-calibration-parsers ceres-solver orocos-kdl tf2-geometry-msgs control-msgs rosbag tf2-ros nav-msgs std-msgs moveit-msgs protobuf roscpp visualization-msgs kdl-parser pluginlib sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Calibrate a Robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
