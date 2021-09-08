
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclcpp-components, rclcpp-lifecycle, rcutils, std-msgs, stubborn-buddies-msgs }:
buildRosPackage {
  pname = "ros-foxy-stubborn-buddies";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/stubborn_buddies-release/archive/release/foxy/stubborn_buddies/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "078d45e7645796f3097900a77778dada7232ec352fce9b00db861fd17e7ab152";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp rclcpp-components rclcpp-lifecycle rcutils std-msgs stubborn-buddies-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demo that uses node composition of lifecycle nodes to achieve fail-over robustness on ROS nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
