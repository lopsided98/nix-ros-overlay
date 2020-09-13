
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, geometry-msgs, nav-msgs, pythonPackages, rclpy, rviz2, sensor-msgs, std-msgs, tf2-ros, webots-ros2-core, webots-ros2-msgs }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-epuck";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_epuck/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "1d31b544d2b9876558b2fe49971e5a932cdb064f969da49c87c9f50ecc607fbb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs nav-msgs rclpy rviz2 sensor-msgs std-msgs tf2-ros webots-ros2-core webots-ros2-msgs ];

  meta = {
    description = ''E-puck2 driver for Webots simulated robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
