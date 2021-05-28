
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-domain-coordinator";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/foxy/domain_coordinator/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "515283f770b058bacaad143ba983c1e560ab22a601779b6e97c84facca818d5e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''A tool to coordinate unique ROS_DOMAIN_IDs across multiple processes'';
    license = with lib.licenses; [ asl20 ];
  };
}
