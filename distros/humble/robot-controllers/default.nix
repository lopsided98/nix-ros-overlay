
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, ament-cmake-gtest, angles, control-msgs, geometry-msgs, kdl-parser, nav-msgs, orocos-kdl, pluginlib, rclcpp, rclcpp-action, robot-controllers-interface, sensor-msgs, std-msgs, tf2-geometry-msgs, tf2-ros, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-humble-robot-controllers";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/robot_controllers-ros2-release/archive/release/humble/robot_controllers/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "2af7614debde55931e933e9ca4b1c2ab5a7e79bec8c729824935c9e116a78ce0";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cpplint ament-cmake-gtest ];
  propagatedBuildInputs = [ angles control-msgs geometry-msgs kdl-parser nav-msgs orocos-kdl pluginlib rclcpp rclcpp-action robot-controllers-interface sensor-msgs std-msgs tf2-geometry-msgs tf2-ros trajectory-msgs urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Some basic robot controllers for use with robot_controllers_interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
