
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, pythonPackages, rclpy, std-msgs, webots-ros2-control, webots-ros2-driver, webots-ros2-epuck, webots-ros2-importer, webots-ros2-mavic, webots-ros2-msgs, webots-ros2-tesla, webots-ros2-tests, webots-ros2-tiago, webots-ros2-turtlebot, webots-ros2-universal-robot }:
buildRosPackage {
  pname = "ros-rolling-webots-ros2";
  version = "2023.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/rolling/webots_ros2/2023.0.2-1.tar.gz";
    name = "2023.0.2-1.tar.gz";
    sha256 = "4ca23a2c40a3a98ca040531e0567a8af4c933c5195723ae985cfa181a9bfe71e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest webots-ros2-tests ];
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2-control webots-ros2-driver webots-ros2-epuck webots-ros2-importer webots-ros2-mavic webots-ros2-msgs webots-ros2-tesla webots-ros2-tiago webots-ros2-turtlebot webots-ros2-universal-robot ];

  meta = {
    description = ''Interface between Webots and ROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
