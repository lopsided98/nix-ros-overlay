
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, eigen, osqp-vendor, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-autoware-osqp-interface";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_osqp_interface/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "f2c9dafe0e45fef9c284ff18adfea73620550b3673e4fd6715da44fb00a80d5a";
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
