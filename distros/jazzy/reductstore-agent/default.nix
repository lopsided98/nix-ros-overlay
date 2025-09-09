
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-reductstore-agent";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/reductstore_agent-release/archive/release/jazzy/reductstore_agent/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "361bd9252008eeaad668435fbe16f4bc0ffef37e1438eba030ef1590b9455e54";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs std-srvs ];

  meta = {
    description = "ROS2 recorder node that logs selected topics to ReductStore, with YAML-driven pipelines (mcap/raw, compression, splitting, down-sampling, labelling).";
    license = with lib.licenses; [ mit ];
  };
}
