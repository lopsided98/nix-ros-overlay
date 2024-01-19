
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, ament-cmake-gtest, angles, control-msgs, geometry-msgs, kdl-parser, nav-msgs, orocos-kdl, pluginlib, rclcpp, rclcpp-action, robot-controllers-interface, sensor-msgs, std-msgs, tf2-geometry-msgs, tf2-ros, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-humble-robot-controllers";
  version = "0.9.3-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/robot_controllers-ros2-release/archive/release/humble/robot_controllers/0.9.3-1.tar.gz";
    name = "0.9.3-1.tar.gz";
    sha256 = "801b0e3177664043f852d61324299b4ec592510b7d0059830446c4b5cb7c649a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cpplint ament-cmake-gtest ];
  propagatedBuildInputs = [ angles control-msgs geometry-msgs kdl-parser nav-msgs orocos-kdl pluginlib rclcpp rclcpp-action robot-controllers-interface sensor-msgs std-msgs tf2-geometry-msgs tf2-ros trajectory-msgs urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Some basic robot controllers for use with robot_controllers_interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
