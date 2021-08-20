
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, geometry-msgs, nav-msgs, pythonPackages, rclpy, rviz2, sensor-msgs, std-msgs, tf2-ros, webots-ros2-core, webots-ros2-msgs }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-epuck";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_epuck/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "436a1a3283486eb1f0cdc8fb637656691f44d153f72048e85f8ebe84317f851c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs nav-msgs rclpy rviz2 sensor-msgs std-msgs tf2-ros webots-ros2-core webots-ros2-msgs ];

  meta = {
    description = ''E-puck2 driver for Webots simulated robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
