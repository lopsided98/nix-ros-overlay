
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, eigen, osqp-vendor, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-osqp-interface";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_osqp_interface/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "1e5f4373277cf960c0c495e968fa71749c2cd6cb558066cde56da57f5517005e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common eigen ];
  propagatedBuildInputs = [ eigen osqp-vendor rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "Interface for the OSQP solver";
    license = with lib.licenses; [ asl20 ];
  };
}
