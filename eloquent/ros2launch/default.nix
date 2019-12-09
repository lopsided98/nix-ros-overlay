
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, launch, ament-index-python, launch-ros, pythonPackages, ros2pkg, ros2cli, ament-pep257, ament-flake8 }:
buildRosPackage {
  pname = "ros-eloquent-ros2launch";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/eloquent/ros2launch/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "6e9d51f8a9ab454ca30d8acb2fa28797185c5481fe20337c6118a2455f068c60";
  };

  buildType = "ament_python";
  buildInputs = [ launch launch-ros ros2pkg ros2cli ament-index-python ];
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ launch launch-ros ros2pkg ros2cli ament-index-python ];

  meta = {
    description = ''The launch command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
