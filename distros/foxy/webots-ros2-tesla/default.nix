
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ament-copyright, builtin-interfaces, python3Packages, pythonPackages, rclpy, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-tesla";
  version = "2023.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/foxy/webots_ros2_tesla/2023.0.2-1.tar.gz";
    name = "2023.0.2-1.tar.gz";
    sha256 = "deb034f8b572bccd585ce2a0ea4ac744d1c2134e65924690591cbfd981de1f65";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ ackermann-msgs builtin-interfaces python3Packages.numpy python3Packages.opencv3 rclpy webots-ros2-driver ];

  meta = {
    description = ''Tesla ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
