
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, demo-nodes-py, graphviz, python3Packages, rclpy, ros2cli, ros2component, ros2node, ros2param, ros2pkg, ros2service, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-ros2-snapshot";
  version = "0.0.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_snapshot-release/archive/release/rolling/ros2_snapshot/0.0.7-2.tar.gz";
    name = "0.0.7-2.tar.gz";
    sha256 = "7c30a84e1667ec9f368a9ef6dd09d85d7a708796106c5cd5e4954ce352e462a4";
  };

  buildType = "ament_python";
  checkInputs = [ demo-nodes-py python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python graphviz python3Packages.graphviz python3Packages.psutil python3Packages.pydantic python3Packages.pyyaml rclpy ros2cli ros2component ros2node ros2param ros2pkg ros2service std-srvs ];

  meta = {
    description = "ROS2 Snapshot - contains workspace modeler and snapshot tools";
    license = with lib.licenses; [ asl20 ];
  };
}
