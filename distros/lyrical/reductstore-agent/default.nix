
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-reductstore-agent";
  version = "0.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/reductstore_agent-release/archive/release/lyrical/reductstore_agent/0.2.0-3.tar.gz";
    name = "0.2.0-3.tar.gz";
    sha256 = "4701743aef6afd36929f03fb8b30bec31abf7495ebd0673ed41bcafd22fca203";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs std-srvs ];

  meta = {
    description = "ROS2 recorder node that logs selected topics to ReductStore, with YAML-driven pipelines (mcap/raw, compression, splitting, down-sampling, labelling).";
    license = with lib.licenses; [ mit ];
  };
}
