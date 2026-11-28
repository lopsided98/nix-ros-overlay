
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rclcpp, rclcpp-components, tobas-ic-drivers }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ic-drivers-ros";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ic_drivers_ros/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "b6716ad30bb50b7d6534e71259e20aff056dcbbc62bfbd3380e46332ea9bb1c6";
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
