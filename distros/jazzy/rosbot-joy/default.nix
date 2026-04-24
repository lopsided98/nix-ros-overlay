
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, control-msgs, geometry-msgs, joy, launch, launch-ros, moveit-msgs, moveit-ros-planning, moveit-ros-planning-interface, moveit-servo, rclcpp, rclcpp-action, sensor-msgs, std-srvs, teleop-twist-joy }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-joy";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_joy/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "c2c01f2c5ba86654c33129504e18cd3316480fb192cbf73527d83d54ce70f4a7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ builtin-interfaces control-msgs geometry-msgs joy launch launch-ros moveit-msgs moveit-ros-planning moveit-ros-planning-interface moveit-servo rclcpp rclcpp-action sensor-msgs std-srvs teleop-twist-joy ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The rosbot_joy package to handle joystick inputs for the rosbot and open manipulator";
    license = with lib.licenses; [ asl20 ];
  };
}
