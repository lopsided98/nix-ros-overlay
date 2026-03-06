
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, control-msgs, geometry-msgs, joy, launch, launch-ros, moveit-msgs, moveit-ros-planning, moveit-ros-planning-interface, moveit-servo, rclcpp, sensor-msgs, teleop-twist-joy }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-joy";
  version = "0.18.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_joy/0.18.6-1.tar.gz";
    name = "0.18.6-1.tar.gz";
    sha256 = "cf4d26ce6db306f6518863d4bad5f4b8c29f037fadffca028dc75539289e9178";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ builtin-interfaces control-msgs geometry-msgs joy launch launch-ros moveit-msgs moveit-ros-planning moveit-ros-planning-interface moveit-servo rclcpp sensor-msgs teleop-twist-joy ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The rosbot_joy package to handle joystick inputs for the rosbot and open manipulator";
    license = with lib.licenses; [ asl20 ];
  };
}
