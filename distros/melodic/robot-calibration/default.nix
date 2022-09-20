
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, camera-calibration-parsers, catkin, ceres-solver, code-coverage, control-msgs, cv-bridge, eigen, geometric-shapes, geometry-msgs, gflags, kdl-parser, moveit-msgs, nav-msgs, orocos-kdl, pluginlib, protobuf, robot-calibration-msgs, rosbag, roscpp, sensor-msgs, std-msgs, suitesparse, tf, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-robot-calibration";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/robot_calibration-release/archive/release/melodic/robot_calibration/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "7fdd451c86b8c47d73377414efa7da84f2a0cb3d8126e59033d1dc38600ed295";
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
