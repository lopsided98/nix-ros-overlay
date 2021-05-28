
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, geometry-msgs, nav-msgs, pythonPackages, rclpy, rviz2, sensor-msgs, std-msgs, tf2-ros, webots-ros2-core, webots-ros2-msgs }:
buildRosPackage {
  pname = "ros-galactic-webots-ros2-epuck";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/galactic/webots_ros2_epuck/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "0458f7c0230b507c116c10027ab0370d3a6013cd7acc741ebb08da1a00a6c0c8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs nav-msgs rclpy rviz2 sensor-msgs std-msgs tf2-ros webots-ros2-core webots-ros2-msgs ];

  meta = {
    description = ''E-puck2 driver for Webots simulated robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
