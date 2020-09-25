
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, geometry-msgs, nav-msgs, pythonPackages, rclpy, rviz2, sensor-msgs, std-msgs, tf2-ros, webots-ros2-core, webots-ros2-msgs }:
buildRosPackage {
  pname = "ros-eloquent-webots-ros2-epuck";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/eloquent/webots_ros2_epuck/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "9a73808ec8f09a79721e7e7c9bdc247ea858bafceeeb826e767153864c2210e0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs nav-msgs rclpy rviz2 sensor-msgs std-msgs tf2-ros webots-ros2-core webots-ros2-msgs ];

  meta = {
    description = ''E-puck2 driver for Webots simulated robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
