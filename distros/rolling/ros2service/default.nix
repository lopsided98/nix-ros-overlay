
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, rclpy, ros2cli, rosidl-runtime-py, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2service";
  version = "0.42.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2service/0.42.1-1.tar.gz";
    name = "0.42.1-1.tar.gz";
    sha256 = "8ccb4aa2beb239b1c818e3013eace0ee29b0cae9c00c1b451efe882c43ae1377";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout test-msgs ];
  propagatedBuildInputs = [ python3Packages.pyyaml rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = "The service command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
