
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-reductstore-agent";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/reductstore_agent-release/archive/release/rolling/reductstore_agent/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "133e4a2c44ef8682853beca153f196ffb97057d49b8ce1bfa9e1db2da537cf99";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs std-srvs ];

  meta = {
    description = "ROS2 recorder node that logs selected topics to ReductStore, with YAML-driven pipelines (mcap/raw, compression, splitting, down-sampling, labelling).";
    license = with lib.licenses; [ mit ];
  };
}
