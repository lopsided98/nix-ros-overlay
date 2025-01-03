
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, controller-manager, diff-drive-controller, geometry-msgs, joint-state-broadcaster, python3Packages, rclpy, robot-state-publisher, rviz2, tf2-ros, webots-ros2-control, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-humble-webots-ros2-tiago";
  version = "2023.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/humble/webots_ros2_tiago/2023.1.3-1.tar.gz";
    name = "2023.1.3-1.tar.gz";
    sha256 = "eb2c0a737f31c350009e2ae0901567e779c5f30838333a84d49657f538999cd1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces controller-manager diff-drive-controller geometry-msgs joint-state-broadcaster rclpy robot-state-publisher rviz2 tf2-ros webots-ros2-control webots-ros2-driver ];

  meta = {
    description = "TIAGo robots ROS2 interface for Webots.";
    license = with lib.licenses; [ asl20 ];
  };
}
