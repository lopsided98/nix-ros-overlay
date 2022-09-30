
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, controller-manager, diff-drive-controller, geometry-msgs, joint-state-broadcaster, pythonPackages, rclpy, robot-state-publisher, rviz2, tf2-ros, webots-ros2-control, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-humble-webots-ros2-tiago";
  version = "2022.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/humble/webots_ros2_tiago/2022.1.0-1.tar.gz";
    name = "2022.1.0-1.tar.gz";
    sha256 = "e8ec3f238dbe5ccf1a46b3db10f92dc56567be90f8705e01fc08c5a3808a4532";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces controller-manager diff-drive-controller geometry-msgs joint-state-broadcaster rclpy robot-state-publisher rviz2 tf2-ros webots-ros2-control webots-ros2-driver ];

  meta = {
    description = ''TIAGo robots ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
