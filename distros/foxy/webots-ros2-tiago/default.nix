
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, controller-manager, diff-drive-controller, geometry-msgs, joint-state-broadcaster, pythonPackages, rclpy, robot-state-publisher, rviz2, tf2-ros, webots-ros2-control, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-tiago";
  version = "2023.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/foxy/webots_ros2_tiago/2023.0.0-2.tar.gz";
    name = "2023.0.0-2.tar.gz";
    sha256 = "c4a2fbffa8b5073db06adf0aa470464899efece0e02e6049e05ad99ad923baec";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces controller-manager diff-drive-controller geometry-msgs joint-state-broadcaster rclpy robot-state-publisher rviz2 tf2-ros webots-ros2-control webots-ros2-driver ];

  meta = {
    description = ''TIAGo robots ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
