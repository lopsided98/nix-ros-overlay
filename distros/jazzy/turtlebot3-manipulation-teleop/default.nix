
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, control-msgs, geometry-msgs, nav-msgs, rclcpp, sensor-msgs, turtlebot3-manipulation-bringup, turtlebot3-manipulation-description, turtlebot3-manipulation-moveit-config }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-manipulation-teleop";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/jazzy/turtlebot3_manipulation_teleop/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "5f245bde5a5865d7f9a7912138b1464e24c10281481854f58116ad3038d99030";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ control-msgs geometry-msgs nav-msgs rclcpp sensor-msgs turtlebot3-manipulation-bringup turtlebot3-manipulation-description turtlebot3-manipulation-moveit-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Ros2 Package of the turtlebot3_manipulation_teleop";
    license = with lib.licenses; [ asl20 ];
  };
}
