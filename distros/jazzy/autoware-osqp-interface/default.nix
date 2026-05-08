
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, eigen, osqp-vendor, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-autoware-osqp-interface";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_osqp_interface/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "b6bfcb496944e68dfe32956b8cdd05da7897e4f7fb5d27ee9387dad77bc42a58";
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
