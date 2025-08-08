
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nav-msgs, python3Packages, rclpy, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-automatic-parking-vision";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_applications-release/archive/release/jazzy/turtlebot3_automatic_parking_vision/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "773e8f3f31a1ca9c709f846cba7b5fca899fa270aa60014e3fbf5fc46b6412be";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs nav-msgs python3Packages.scipy rclpy std-msgs tf2-ros ];

  meta = {
    description = "Automatic Parking Vision for TurtleBot3 Examples.";
    license = with lib.licenses; [ asl20 ];
  };
}
