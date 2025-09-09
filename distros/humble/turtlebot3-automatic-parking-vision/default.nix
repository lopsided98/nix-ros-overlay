
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nav-msgs, python3Packages, rclpy, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-automatic-parking-vision";
  version = "1.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_applications-release/archive/release/humble/turtlebot3_automatic_parking_vision/1.3.3-2.tar.gz";
    name = "1.3.3-2.tar.gz";
    sha256 = "f843ba50178e03667667a771d355e00039b254607a83f9d7b0391968436c0630";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs nav-msgs python3Packages.scipy rclpy std-msgs tf2-ros ];

  meta = {
    description = "Automatic Parking Vision for TurtleBot3 Examples.";
    license = with lib.licenses; [ asl20 ];
  };
}
