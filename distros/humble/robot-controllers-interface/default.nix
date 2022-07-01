
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, pluginlib, rclcpp, rclcpp-action, robot-controllers-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-robot-controllers-interface";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/robot_controllers-ros2-release/archive/release/humble/robot_controllers_interface/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "539295fe2ee86178d68928a34ae807d098a4f8042f28a40b53d0d3e72e44b57c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cpplint ];
  propagatedBuildInputs = [ pluginlib rclcpp rclcpp-action robot-controllers-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generic framework for robot controls.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
