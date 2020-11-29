
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, ament-cmake-gtest, angles, control-msgs, geometry-msgs, kdl-parser, nav-msgs, orocos-kdl, pluginlib, rclcpp, rclcpp-action, robot-controllers-interface, sensor-msgs, std-msgs, tf2-geometry-msgs, tf2-ros, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-foxy-robot-controllers";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/robot_controllers-ros2-release/archive/release/foxy/robot_controllers/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "366c069912d76f5b9b446deb063757dcaec44256df5371e0b3399e5ad7bd6d5c";
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
