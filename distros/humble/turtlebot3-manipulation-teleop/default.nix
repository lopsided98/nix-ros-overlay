
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, control-msgs, geometry-msgs, nav-msgs, rclcpp, sensor-msgs, turtlebot3-manipulation-bringup, turtlebot3-manipulation-description, turtlebot3-manipulation-moveit-config }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-manipulation-teleop";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/humble/turtlebot3_manipulation_teleop/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "f4b55d7e30e83cf0c33c4b594d04e6165ee547e21c3e9011b40808024fd7ed65";
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
