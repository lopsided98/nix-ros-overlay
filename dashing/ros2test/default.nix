
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch-testing-ros, ament-copyright, launch, launch-testing, launch-ros, pythonPackages, ros2cli, ament-pep257, ament-flake8 }:
buildRosPackage {
  pname = "ros-dashing-ros2test";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/dashing/ros2test/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "397857125e99e5538c976a31bd85e0b7627120c4318b676935468711cdf846de";
  };

  buildType = "ament_python";
  buildInputs = [ launch-testing-ros launch launch-testing launch-ros ros2cli ];
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ launch-testing-ros launch launch-testing launch-ros ros2cli ];

  meta = {
    description = ''The test command for ROS 2 launch tests.'';
    license = with lib.licenses; [ asl20 ];
  };
}
