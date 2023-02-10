
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, controller-manager, diff-drive-controller, joint-state-broadcaster, pythonPackages, rclpy, robot-state-publisher, rviz2, tf2-ros, webots-ros2-control, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-humble-webots-ros2-turtlebot";
  version = "2023.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/humble/webots_ros2_turtlebot/2023.0.2-1.tar.gz";
    name = "2023.0.2-1.tar.gz";
    sha256 = "70ee66b0c3ab1d4f72c0bd860e16dac7c539acd5a9b4867a311144fbed175be6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces controller-manager diff-drive-controller joint-state-broadcaster rclpy robot-state-publisher rviz2 tf2-ros webots-ros2-control webots-ros2-driver ];

  meta = {
    description = ''TurtleBot3 Burger robot ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
