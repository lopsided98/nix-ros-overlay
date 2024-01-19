
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, domain-coordinator, launch, launch-ros, launch-testing, launch-testing-ros, pythonPackages, ros2cli }:
buildRosPackage {
  pname = "ros-iron-ros2test";
  version = "0.5.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/iron/ros2test/0.5.2-3.tar.gz";
    name = "0.5.2-3.tar.gz";
    sha256 = "c89db2d2ced718fed0421524a02eba7116e4845788198024a0463a407429dcd3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ domain-coordinator launch launch-ros launch-testing launch-testing-ros ros2cli ];

  meta = {
    description = ''The test command for ROS 2 launch tests.'';
    license = with lib.licenses; [ asl20 ];
  };
}
