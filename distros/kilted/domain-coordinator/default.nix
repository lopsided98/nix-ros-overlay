
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-domain-coordinator";
  version = "0.14.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/kilted/domain_coordinator/0.14.3-2.tar.gz";
    name = "0.14.3-2.tar.gz";
    sha256 = "a9f3e7dcea054ba544935ef845243ebf0c05f5fbc50ce05c4141a94a85024c79";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];

  meta = {
    description = "A tool to coordinate unique ROS_DOMAIN_IDs across multiple processes";
    license = with lib.licenses; [ asl20 ];
  };
}
