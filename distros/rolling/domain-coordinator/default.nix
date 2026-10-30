
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-domain-coordinator";
  version = "0.16.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/rolling/domain_coordinator/0.16.1-1.tar.gz";
    name = "0.16.1-1.tar.gz";
    sha256 = "e5ef9a7a098449d34b8e18a70a83cf7d61a9ba9a7328814a908abcad5d7e9db2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];

  meta = {
    description = "A tool to coordinate unique ROS_DOMAIN_IDs across multiple processes";
    license = with lib.licenses; [ asl20 ];
  };
}
