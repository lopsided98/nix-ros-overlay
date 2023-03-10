
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-domain-coordinator";
  version = "0.11.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/rolling/domain_coordinator/0.11.2-1.tar.gz";
    name = "0.11.2-1.tar.gz";
    sha256 = "ea31007afd2addc3d617435595d52f6830430567561152d66abc3bb0a803dda9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''A tool to coordinate unique ROS_DOMAIN_IDs across multiple processes'';
    license = with lib.licenses; [ asl20 ];
  };
}
