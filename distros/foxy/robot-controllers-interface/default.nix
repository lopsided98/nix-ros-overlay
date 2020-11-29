
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, pluginlib, rclcpp, rclcpp-action, robot-controllers-msgs }:
buildRosPackage {
  pname = "ros-foxy-robot-controllers-interface";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/robot_controllers-ros2-release/archive/release/foxy/robot_controllers_interface/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "925cfd30fee10080ad49e6fc5357e8dc2cafa93397efeb2a74754b51001d4715";
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
