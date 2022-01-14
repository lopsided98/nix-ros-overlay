
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, controller-manager, diff-drive-controller, geometry-msgs, joint-state-broadcaster, nav-msgs, pythonPackages, rclpy, robot-state-publisher, rviz2, sensor-msgs, std-msgs, tf2-ros, webots-ros2-control, webots-ros2-driver, webots-ros2-msgs }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-epuck";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/foxy/webots_ros2_epuck/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "f75f24bd2ac58389bef5c389fc402d4b8242cc4221992fbc4cc134389691bf94";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces controller-manager diff-drive-controller geometry-msgs joint-state-broadcaster nav-msgs rclpy robot-state-publisher rviz2 sensor-msgs std-msgs tf2-ros webots-ros2-control webots-ros2-driver webots-ros2-msgs ];

  meta = {
    description = ''E-puck2 driver for Webots simulated robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
