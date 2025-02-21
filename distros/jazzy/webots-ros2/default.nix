
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, python3Packages, rclpy, std-msgs, webots-ros2-control, webots-ros2-crazyflie, webots-ros2-driver, webots-ros2-epuck, webots-ros2-husarion, webots-ros2-importer, webots-ros2-mavic, webots-ros2-msgs, webots-ros2-tesla, webots-ros2-tests, webots-ros2-tiago, webots-ros2-turtlebot, webots-ros2-universal-robot }:
buildRosPackage {
  pname = "ros-jazzy-webots-ros2";
  version = "2025.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/jazzy/webots_ros2/2025.0.0-1.tar.gz";
    name = "2025.0.0-1.tar.gz";
    sha256 = "c00d1f89a6d2e27abd946bc5b52c8e0b7ae6723f68ff4d43102f893dd856e743";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest webots-ros2-tests ];
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2-control webots-ros2-crazyflie webots-ros2-driver webots-ros2-epuck webots-ros2-husarion webots-ros2-importer webots-ros2-mavic webots-ros2-msgs webots-ros2-tesla webots-ros2-tiago webots-ros2-turtlebot webots-ros2-universal-robot ];

  meta = {
    description = "Interface between Webots and ROS2";
    license = with lib.licenses; [ asl20 ];
  };
}
