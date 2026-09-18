
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-domain-coordinator";
  version = "0.14.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/kilted/domain_coordinator/0.14.8-1.tar.gz";
    name = "0.14.8-1.tar.gz";
    sha256 = "16d38cf2380b9f5aa721518d5b2e058acf8ebba0e08301163a65fcb426706324";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];

  meta = {
    description = "A tool to coordinate unique ROS_DOMAIN_IDs across multiple processes";
    license = with lib.licenses; [ asl20 ];
  };
}
