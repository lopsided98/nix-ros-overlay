
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rclcpp, rclcpp-components, tobas-ic-drivers }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ic-drivers-ros";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ic_drivers_ros/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "af2f686e1b43d3de1121cbce0edb8d307e2a3e08c9c46aaceb5dd66d1f1060db";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs rclcpp rclcpp-components tobas-ic-drivers ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 publisher nodes for integrated-circuit sensor drivers.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
