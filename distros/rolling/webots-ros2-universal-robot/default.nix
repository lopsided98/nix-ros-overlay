
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, control-msgs, controller-manager, joint-state-broadcaster, joint-trajectory-controller, pythonPackages, rclpy, robot-state-publisher, rviz2, trajectory-msgs, webots-ros2-control, webots-ros2-driver, xacro }:
buildRosPackage {
  pname = "ros-rolling-webots-ros2-universal-robot";
  version = "2023.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/rolling/webots_ros2_universal_robot/2023.0.2-1.tar.gz";
    name = "2023.0.2-1.tar.gz";
    sha256 = "336fffb58694a8f06dda9a77e2df0d757fd0d52f2e9e0925012774a29c5b9689";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces control-msgs controller-manager joint-state-broadcaster joint-trajectory-controller rclpy robot-state-publisher rviz2 trajectory-msgs webots-ros2-control webots-ros2-driver xacro ];

  meta = {
    description = ''Universal Robot ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
