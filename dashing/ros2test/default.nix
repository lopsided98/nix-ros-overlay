
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, launch-ros, launch-testing, launch, pythonPackages, ament-pep257, ament-copyright, launch-testing-ros, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-ros2test";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/dashing/ros2test/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "397857125e99e5538c976a31bd85e0b7627120c4318b676935468711cdf846de";
  };

  buildType = "ament_python";
  buildInputs = [ launch-ros launch-testing launch launch-testing-ros ros2cli ];
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ launch-ros launch-testing launch launch-testing-ros ros2cli ];

  meta = {
    description = ''The test command for ROS 2 launch tests.'';
    license = with lib.licenses; [ asl20 ];
  };
}
