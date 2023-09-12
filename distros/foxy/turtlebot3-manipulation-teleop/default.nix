
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, control-msgs, geometry-msgs, nav-msgs, rclcpp, sensor-msgs, turtlebot3-manipulation-bringup, turtlebot3-manipulation-description, turtlebot3-manipulation-moveit-config }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-manipulation-teleop";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/foxy/turtlebot3_manipulation_teleop/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "fd5237188cfb1f6866ba2f672b6c8edda41f9d8c9f6e93ab2662c826a8951ef5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ control-msgs geometry-msgs nav-msgs rclcpp sensor-msgs turtlebot3-manipulation-bringup turtlebot3-manipulation-description turtlebot3-manipulation-moveit-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 Package of the turtlebot3_manipulation_teleop'';
    license = with lib.licenses; [ asl20 ];
  };
}
