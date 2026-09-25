
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rclcpp, rclcpp-components, tobas-ic-drivers }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ic-drivers-ros";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ic_drivers_ros/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "f6ed3c29fdd914478e2e653d00910cf988b28827c5f9d44601494e3d19a7bd8e";
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
