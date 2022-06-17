
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, pluginlib, rclcpp, rclcpp-action, robot-controllers-msgs }:
buildRosPackage {
  pname = "ros-humble-robot-controllers-interface";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/robot_controllers-ros2-release/archive/release/humble/robot_controllers_interface/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "fa0b921a6a77464174a56b6605722ce4bfab9ef5db7b9368289ed482a9c3d549";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cpplint ];
  propagatedBuildInputs = [ pluginlib rclcpp rclcpp-action robot-controllers-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generic framework for robot controls.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
