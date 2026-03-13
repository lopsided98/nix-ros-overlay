
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, graphviz, python3Packages, ros2pkg }:
buildRosPackage {
  pname = "ros-kilted-ros2-snapshot";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_snapshot-release/archive/release/kilted/ros2_snapshot/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "dc8866d9bd4daeb1c86200a96935a0d42fc49d3df41774ee930fbd0adcb8f2c3";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ graphviz python3Packages.pydantic ros2pkg ];

  meta = {
    description = "ROS2 Snapshot - contains workspace modeler and snapshot tools";
    license = with lib.licenses; [ asl20 ];
  };
}
