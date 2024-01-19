
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclcpp-components, rclcpp-lifecycle, rcutils, std-msgs, stubborn-buddies-msgs }:
buildRosPackage {
  pname = "ros-rolling-stubborn-buddies";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/stubborn_buddies-release/archive/release/rolling/stubborn_buddies/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "26acbca3c643c68a4714619d8808dbe87a87b8a29a816a773cf8cc09d9793e4f";
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
