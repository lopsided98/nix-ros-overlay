
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, pythonPackages, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-dashing-ros2run";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2run/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "8867efcea5c4a0ce700d149601ebf18a5bf3e5e148bf2e4ace026f57a3c3fba6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli ros2pkg ];

  meta = {
    description = ''The run command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
