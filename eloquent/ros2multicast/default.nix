
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, pythonPackages, ament-xmllint, ros2cli, ament-pep257, ament-flake8 }:
buildRosPackage {
  pname = "ros-eloquent-ros2multicast";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/eloquent/ros2multicast/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "a8977918b022ef851536018127232d6970fd8f9e55513280261b5b82de8453ef";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ ament-copyright ament-xmllint ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ ros2cli ];

  meta = {
    description = ''The multicast command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
