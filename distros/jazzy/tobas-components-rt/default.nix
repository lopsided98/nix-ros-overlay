
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclcpp-components, tobas-linux }:
buildRosPackage {
  pname = "ros-jazzy-tobas-components-rt";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_components_rt/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "b4d858811f1f53b003a12a9659af3d217d5a6948bd12114f9bca435c6f9e737a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rclcpp rclcpp-components tobas-linux ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Real-time-oriented ROS 2 component managers, executors, and timer-coalescing containers.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
