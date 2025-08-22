
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, eigen, osqp-vendor, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-osqp-interface";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_osqp_interface/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "0041207f2dae534bbf11744740d8175ead2d3b977d22aed63f8226345dba45bb";
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
