
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pep257, pythonPackages, ament-flake8, ament-copyright }:
buildRosPackage {
  pname = "ros-eloquent-domain-coordinator";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/eloquent/domain_coordinator/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "cdb11628d0d35cbbc9fe3bdf46007d50304c0844f9603d87507b087028042a52";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];

  meta = {
    description = ''A tool to coordinate unique ROS_DOMAIN_IDs across multiple processes'';
    license = with lib.licenses; [ asl20 ];
  };
}
