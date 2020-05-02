
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, camera-calibration-parsers, catkin, ceres-solver, code-coverage, control-msgs, cv-bridge, geometry-msgs, gflags, kdl-parser, moveit-msgs, nav-msgs, orocos-kdl, pluginlib, protobuf, robot-calibration-msgs, rosbag, roscpp, sensor-msgs, std-msgs, suitesparse, tf, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-robot-calibration";
  version = "0.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/robot_calibration-release/archive/release/melodic/robot_calibration/0.6.3-1.tar.gz";
    name = "0.6.3-1.tar.gz";
    sha256 = "0f1548a3bcd88d07310993c9f28dead1bce7eaca3590986a6959a58968ba6f90";
  };

  buildType = "catkin";
  buildInputs = [ gflags ];
  checkInputs = [ code-coverage ];
  propagatedBuildInputs = [ actionlib camera-calibration-parsers ceres-solver control-msgs cv-bridge geometry-msgs kdl-parser moveit-msgs nav-msgs orocos-kdl pluginlib protobuf robot-calibration-msgs rosbag roscpp sensor-msgs std-msgs suitesparse tf tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Calibrate a Robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
