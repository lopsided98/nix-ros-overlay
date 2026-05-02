
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, python3Packages, rclpy, std-msgs, webots-ros2-control, webots-ros2-crazyflie, webots-ros2-driver, webots-ros2-epuck, webots-ros2-husarion, webots-ros2-importer, webots-ros2-mavic, webots-ros2-msgs, webots-ros2-tesla, webots-ros2-tests, webots-ros2-tiago, webots-ros2-turtlebot, webots-ros2-universal-robot }:
buildRosPackage {
  pname = "ros-rolling-webots-ros2";
  version = "2025.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/rolling/webots_ros2/2025.0.1-2.tar.gz";
    name = "2025.0.1-2.tar.gz";
    sha256 = "5541afa362d3c64192536a2d0b1e933646471129b0406f29f856e3b0cdbbe923";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest webots-ros2-tests ];
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2-control webots-ros2-crazyflie webots-ros2-driver webots-ros2-epuck webots-ros2-husarion webots-ros2-importer webots-ros2-mavic webots-ros2-msgs webots-ros2-tesla webots-ros2-tiago webots-ros2-turtlebot webots-ros2-universal-robot ];

  meta = {
    description = "Interface between Webots and ROS2";
    license = with lib.licenses; [ asl20 ];
  };
}
