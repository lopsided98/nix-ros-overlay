
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, controller-manager, controller-manager-msgs, rclpy, ros2cli, ros2node, ros2param, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-foxy-ros2controlcli";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/foxy/ros2controlcli/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "83c4c0e6a3795468c428a4f7d4b87124353edb81c171a13de2cbfbb9cb843840";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ controller-manager controller-manager-msgs rclpy ros2cli ros2node ros2param rosidl-runtime-py ];

  meta = {
    description = ''The ROS 2 command line tools for ROS2 Control.'';
    license = with lib.licenses; [ asl20 ];
  };
}
