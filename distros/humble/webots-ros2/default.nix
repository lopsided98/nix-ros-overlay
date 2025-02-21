
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, python3Packages, rclpy, std-msgs, webots-ros2-control, webots-ros2-crazyflie, webots-ros2-driver, webots-ros2-epuck, webots-ros2-husarion, webots-ros2-importer, webots-ros2-mavic, webots-ros2-msgs, webots-ros2-tesla, webots-ros2-tests, webots-ros2-tiago, webots-ros2-turtlebot, webots-ros2-universal-robot }:
buildRosPackage {
  pname = "ros-humble-webots-ros2";
  version = "2025.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/humble/webots_ros2/2025.0.0-2.tar.gz";
    name = "2025.0.0-2.tar.gz";
    sha256 = "1daaee5a6aa56d1618b31457d94b0019d2b1c7f64e7e65cd8d62810de5c60494";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest webots-ros2-tests ];
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2-control webots-ros2-crazyflie webots-ros2-driver webots-ros2-epuck webots-ros2-husarion webots-ros2-importer webots-ros2-mavic webots-ros2-msgs webots-ros2-tesla webots-ros2-tiago webots-ros2-turtlebot webots-ros2-universal-robot ];

  meta = {
    description = "Interface between Webots and ROS2";
    license = with lib.licenses; [ asl20 ];
  };
}
