
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, demo-nodes-py, graphviz, python3Packages, rclpy, ros2cli, ros2component, ros2node, ros2param, ros2pkg, ros2service, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-ros2-snapshot";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_snapshot-release/archive/release/jazzy/ros2_snapshot/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "57c704275bb2b084ad3a4df33efef8ad88a4a24ac7168b2eb89f79b4c42ca84b";
  };

  buildType = "ament_python";
  checkInputs = [ demo-nodes-py python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python graphviz python3Packages.graphviz python3Packages.psutil python3Packages.pydantic python3Packages.pyyaml rclpy ros2cli ros2component ros2node ros2param ros2pkg ros2service std-srvs ];

  meta = {
    description = "ROS2 Snapshot - contains workspace modeler and snapshot tools";
    license = with lib.licenses; [ asl20 ];
  };
}
