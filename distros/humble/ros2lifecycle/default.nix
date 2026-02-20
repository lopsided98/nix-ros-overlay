
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, lifecycle-msgs, python3Packages, rclpy, ros2cli, ros2lifecycle-test-fixtures, ros2node, ros2service }:
buildRosPackage {
  pname = "ros-humble-ros2lifecycle";
  version = "0.18.17-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/humble/ros2lifecycle/0.18.17-1.tar.gz";
    name = "0.18.17-1.tar.gz";
    sha256 = "0b610f50628dc620fc9e0df3a4919a56cce592909f6c952a834a472da560b811";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout ros2lifecycle-test-fixtures ];
  propagatedBuildInputs = [ lifecycle-msgs rclpy ros2cli ros2node ros2service ];

  meta = {
    description = "The lifecycle command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
