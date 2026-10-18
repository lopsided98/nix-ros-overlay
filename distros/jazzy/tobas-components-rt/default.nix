
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclcpp-components, tobas-linux }:
buildRosPackage {
  pname = "ros-jazzy-tobas-components-rt";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_components_rt/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "99f0b83620eb04e6770a32fdbf4640d2f62468a676878e81132576856bf4e5a0";
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
