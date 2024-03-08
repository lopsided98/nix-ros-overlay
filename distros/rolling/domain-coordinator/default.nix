
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-domain-coordinator";
  version = "0.12.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/rolling/domain_coordinator/0.12.0-2.tar.gz";
    name = "0.12.0-2.tar.gz";
    sha256 = "089849ed565c4337c66d4616206a6036b806f93989565f0a02367098af6467a1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''A tool to coordinate unique ROS_DOMAIN_IDs across multiple processes'';
    license = with lib.licenses; [ asl20 ];
  };
}
