
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclcpp-components, tobas-linux }:
buildRosPackage {
  pname = "ros-jazzy-tobas-components-rt";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_components_rt/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "f9917eb672a5f54983f68ad4ca3d014165077cb4189868ae75a6634aa628d05b";
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
