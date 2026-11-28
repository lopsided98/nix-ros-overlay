
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclcpp-components, tobas-linux }:
buildRosPackage {
  pname = "ros-jazzy-tobas-components-rt";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_components_rt/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "984d89afc5b0e0712f7faecfd4e9bbd959f46f6a373d0b04d5cc566a73016a09";
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
