
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-domain-coordinator";
  version = "0.10.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/humble/domain_coordinator/0.10.0-3.tar.gz";
    name = "0.10.0-3.tar.gz";
    sha256 = "740bfdb1f618577c9dd97617d9bc20da498b9f8799dd724e3058c2a97a653465";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''A tool to coordinate unique ROS_DOMAIN_IDs across multiple processes'';
    license = with lib.licenses; [ asl20 ];
  };
}
