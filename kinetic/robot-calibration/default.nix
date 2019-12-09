
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, ceres-solver, pluginlib, tf, suitesparse, gflags, nav-msgs, kdl-parser, sensor-msgs, protobuf, robot-calibration-msgs, tf2-geometry-msgs, rosbag, tf2-ros, orocos-kdl, std-msgs, catkin, cv-bridge, roscpp, camera-calibration-parsers, control-msgs, code-coverage, actionlib, visualization-msgs, moveit-msgs }:
buildRosPackage {
  pname = "ros-kinetic-robot-calibration";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/robot_calibration-release/archive/release/kinetic/robot_calibration/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "cf6b61a2f7152f3cb9a8d7ce8ad196a8610f08590d536a95009770c3a53f00bf";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs ceres-solver pluginlib tf suitesparse gflags nav-msgs kdl-parser sensor-msgs protobuf robot-calibration-msgs tf2-geometry-msgs rosbag tf2-ros orocos-kdl std-msgs cv-bridge roscpp camera-calibration-parsers control-msgs actionlib visualization-msgs moveit-msgs ];
  checkInputs = [ code-coverage ];
  propagatedBuildInputs = [ geometry-msgs ceres-solver pluginlib tf suitesparse nav-msgs kdl-parser sensor-msgs protobuf robot-calibration-msgs tf2-geometry-msgs rosbag tf2-ros orocos-kdl std-msgs cv-bridge roscpp camera-calibration-parsers control-msgs actionlib visualization-msgs moveit-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Calibrate a Robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
