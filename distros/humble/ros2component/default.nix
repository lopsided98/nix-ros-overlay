
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, composition-interfaces, python3Packages, rcl-interfaces, rclcpp-components, rclpy, ros2cli, ros2node, ros2param, ros2pkg }:
buildRosPackage {
  pname = "ros-humble-ros2component";
  version = "0.18.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/humble/ros2component/0.18.13-1.tar.gz";
    name = "0.18.13-1.tar.gz";
    sha256 = "63ff33349dcd3e90aed7d391f572e4db297452588d1f695d184923bdbb690b60";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest python3Packages.pytest-timeout ];
  propagatedBuildInputs = [ ament-index-python composition-interfaces rcl-interfaces rclcpp-components rclpy ros2cli ros2node ros2param ros2pkg ];

  meta = {
    description = "The component command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
