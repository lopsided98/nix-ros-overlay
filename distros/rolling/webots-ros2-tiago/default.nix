
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, controller-manager, diff-drive-controller, geometry-msgs, joint-state-broadcaster, pythonPackages, rclpy, robot-state-publisher, rviz2, tf2-ros, webots-ros2-control, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-rolling-webots-ros2-tiago";
  version = "2023.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/rolling/webots_ros2_tiago/2023.0.3-1.tar.gz";
    name = "2023.0.3-1.tar.gz";
    sha256 = "2afa586ea9f3bdd6bab377d6d16c398df8a369ffc8f2c7048669e81fda076e9c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces controller-manager diff-drive-controller geometry-msgs joint-state-broadcaster rclpy robot-state-publisher rviz2 tf2-ros webots-ros2-control webots-ros2-driver ];

  meta = {
    description = ''TIAGo robots ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
