
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, eigen, osqp-vendor, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-osqp-interface";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_osqp_interface/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "c6f3d3294e0076c0b55e03d2630020d3eba2fa30dfaeb3cdf1da1a2fcb4d32d8";
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
