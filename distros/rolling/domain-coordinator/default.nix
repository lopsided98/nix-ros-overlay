
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-domain-coordinator";
  version = "0.15.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/rolling/domain_coordinator/0.15.7-1.tar.gz";
    name = "0.15.7-1.tar.gz";
    sha256 = "91fa23be2aeac2a4ff1912f961817ea69a525fffe770ba752bb13a59e28da9f8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];

  meta = {
    description = "A tool to coordinate unique ROS_DOMAIN_IDs across multiple processes";
    license = with lib.licenses; [ asl20 ];
  };
}
