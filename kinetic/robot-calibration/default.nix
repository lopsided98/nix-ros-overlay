
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, camera-calibration-parsers, catkin, ceres-solver, code-coverage, control-msgs, cv-bridge, geometry-msgs, gflags, kdl-parser, moveit-msgs, nav-msgs, orocos-kdl, pluginlib, protobuf, robot-calibration-msgs, rosbag, roscpp, sensor-msgs, std-msgs, suitesparse, tf, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-robot-calibration";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/robot_calibration-release/archive/release/kinetic/robot_calibration/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "cf6b61a2f7152f3cb9a8d7ce8ad196a8610f08590d536a95009770c3a53f00bf";
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
