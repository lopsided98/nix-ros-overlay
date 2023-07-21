
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, pythonPackages, rclpy, ros2cli, rosidl-runtime-py, test-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2service";
  version = "0.18.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/humble/ros2service/0.18.6-2.tar.gz";
    name = "0.18.6-2.tar.gz";
    sha256 = "389f0cb48fae63486d0f46c229e2524e8fc979e97dafa44633146d1bb7d5508b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest-timeout pythonPackages.pytest test-msgs ];
  propagatedBuildInputs = [ python3Packages.pyyaml rclpy ros2cli rosidl-runtime-py ];

  meta = {
    description = ''The service command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
