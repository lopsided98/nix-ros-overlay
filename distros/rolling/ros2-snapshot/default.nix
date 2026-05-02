
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, demo-nodes-py, graphviz, python3Packages, rclpy, ros2cli, ros2component, ros2node, ros2param, ros2pkg, ros2service }:
buildRosPackage {
  pname = "ros-rolling-ros2-snapshot";
  version = "0.0.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_snapshot-release/archive/release/rolling/ros2_snapshot/0.0.6-3.tar.gz";
    name = "0.0.6-3.tar.gz";
    sha256 = "8f58d11c15777259c2cc2edc1ae70c777b3c56e2f791ed8acb2b81ccf52b9756";
  };

  buildType = "ament_python";
  checkInputs = [ demo-nodes-py python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python graphviz python3Packages.graphviz python3Packages.psutil python3Packages.pydantic python3Packages.pyyaml rclpy ros2cli ros2component ros2node ros2param ros2pkg ros2service ];

  meta = {
    description = "ROS2 Snapshot - contains workspace modeler and snapshot tools";
    license = with lib.licenses; [ asl20 ];
  };
}
