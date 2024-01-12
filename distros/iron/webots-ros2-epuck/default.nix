
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, controller-manager, diff-drive-controller, geometry-msgs, joint-state-broadcaster, nav-msgs, pythonPackages, rclpy, robot-state-publisher, rviz2, sensor-msgs, std-msgs, tf2-ros, webots-ros2-control, webots-ros2-driver, webots-ros2-msgs }:
buildRosPackage {
  pname = "ros-iron-webots-ros2-epuck";
  version = "2023.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/iron/webots_ros2_epuck/2023.1.1-2.tar.gz";
    name = "2023.1.1-2.tar.gz";
    sha256 = "d546ddab11fa4fcd71fa52af4014241380e88877505caf95b954034b749e1318";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces controller-manager diff-drive-controller geometry-msgs joint-state-broadcaster nav-msgs rclpy robot-state-publisher rviz2 sensor-msgs std-msgs tf2-ros webots-ros2-control webots-ros2-driver webots-ros2-msgs ];

  meta = {
    description = ''E-puck2 driver for Webots simulated robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
