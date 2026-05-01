
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, demo-nodes-py, graphviz, python3Packages, rclpy, ros2cli, ros2component, ros2node, ros2param, ros2pkg, ros2service, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-ros2-snapshot";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_snapshot-release/archive/release/lyrical/ros2_snapshot/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "540e8b90f8883a8ab948b10ca53e297bb4aabe36a997b4fd9d7118069c6c6191";
  };

  buildType = "ament_python";
  checkInputs = [ demo-nodes-py python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python graphviz python3Packages.graphviz python3Packages.psutil python3Packages.pydantic python3Packages.pyyaml rclpy ros2cli ros2component ros2node ros2param ros2pkg ros2service std-srvs ];

  meta = {
    description = "ROS2 Snapshot - contains workspace modeler and snapshot tools";
    license = with lib.licenses; [ asl20 ];
  };
}
