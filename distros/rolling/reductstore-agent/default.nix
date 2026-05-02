
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-reductstore-agent";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/reductstore_agent-release/archive/release/rolling/reductstore_agent/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "6be1f7a3997af2717941561a000e61bbd4ccd63c74fa92173667d9ab964616d1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs std-srvs ];

  meta = {
    description = "ROS2 recorder node that logs selected topics to ReductStore, with YAML-driven pipelines (mcap/raw, compression, splitting, down-sampling, labelling).";
    license = with lib.licenses; [ mit ];
  };
}
