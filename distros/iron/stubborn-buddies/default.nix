
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclcpp-components, rclcpp-lifecycle, rcutils, std-msgs, stubborn-buddies-msgs }:
buildRosPackage {
  pname = "ros-iron-stubborn-buddies";
  version = "1.0.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/stubborn_buddies-release/archive/release/iron/stubborn_buddies/1.0.0-6.tar.gz";
    name = "1.0.0-6.tar.gz";
    sha256 = "9cfc346f3b4525c86e773a9a8d6f8bb45132767cebc7d560aae04f8e96c0b4ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rclcpp rclcpp-components rclcpp-lifecycle rcutils std-msgs stubborn-buddies-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demo that uses node composition of lifecycle nodes to achieve fail-over robustness on ROS nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
