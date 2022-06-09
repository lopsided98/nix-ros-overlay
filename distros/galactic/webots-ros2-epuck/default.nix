
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, controller-manager, diff-drive-controller, geometry-msgs, joint-state-broadcaster, nav-msgs, pythonPackages, rclpy, robot-state-publisher, rviz2, sensor-msgs, std-msgs, tf2-ros, webots-ros2-control, webots-ros2-driver, webots-ros2-msgs }:
buildRosPackage {
  pname = "ros-galactic-webots-ros2-epuck";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/galactic/webots_ros2_epuck/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "3856bc1bfdde0bdf0a9a210c3b1aab0bb300f8bef93163aab363d0dbc7973e2c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces controller-manager diff-drive-controller geometry-msgs joint-state-broadcaster nav-msgs rclpy robot-state-publisher rviz2 sensor-msgs std-msgs tf2-ros webots-ros2-control webots-ros2-driver webots-ros2-msgs ];

  meta = {
    description = ''E-puck2 driver for Webots simulated robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
