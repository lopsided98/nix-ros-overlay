
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclcpp-components, rclcpp-lifecycle, rcutils, std-msgs, stubborn-buddies-msgs }:
buildRosPackage {
  pname = "ros-rolling-stubborn-buddies";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/stubborn_buddies-release/archive/release/rolling/stubborn_buddies/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "d6a4412dd8c0e698e83f27cb71f600256ab2337ae0a5dbe9a40b15df43b5333e";
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
