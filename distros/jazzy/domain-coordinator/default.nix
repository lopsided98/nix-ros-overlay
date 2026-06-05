
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-domain-coordinator";
  version = "0.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/jazzy/domain_coordinator/0.12.1-1.tar.gz";
    name = "0.12.1-1.tar.gz";
    sha256 = "99ca403670c0de588f46743a90b3a1dff4875b1e2eb5df4bef2a7cd3a77260ff";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];

  meta = {
    description = "A tool to coordinate unique ROS_DOMAIN_IDs across multiple processes";
    license = with lib.licenses; [ asl20 ];
  };
}
