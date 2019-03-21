
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, actionlib, tf, geometry-msgs, robot-calibration-msgs, suitesparse, gflags, camera-calibration-parsers, ceres-solver, orocos-kdl, control-msgs, tf2-geometry-msgs, rosbag, catkin, tf2-ros, nav-msgs, std-msgs, moveit-msgs, protobuf, roscpp, visualization-msgs, kdl-parser, pluginlib, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-robot-calibration";
  version = "0.6.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/robot_calibration-release/archive/release/melodic/robot_calibration/0.6.0-0.tar.gz;
    sha256 = "bd39604970ae9dd0a27d006fac49afbf50604f89ff7d7218e4967c91d866b175";
  };

  propagatedBuildInputs = [ ceres-solver orocos-kdl tf2-geometry-msgs control-msgs rosbag cv-bridge tf2-ros nav-msgs actionlib std-msgs moveit-msgs protobuf roscpp tf visualization-msgs robot-calibration-msgs geometry-msgs suitesparse kdl-parser pluginlib camera-calibration-parsers sensor-msgs ];
  nativeBuildInputs = [ ceres-solver orocos-kdl tf2-geometry-msgs control-msgs rosbag cv-bridge catkin tf2-ros nav-msgs actionlib std-msgs moveit-msgs protobuf roscpp tf visualization-msgs robot-calibration-msgs geometry-msgs suitesparse kdl-parser pluginlib gflags camera-calibration-parsers sensor-msgs ];

  meta = {
    description = ''Calibrate a Robot'';
    #license = lib.licenses.Apache2;
  };
}
