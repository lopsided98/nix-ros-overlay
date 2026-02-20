
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, eigen, osqp-vendor, proxsuite, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-qp-interface";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_qp_interface/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "cde6770a9976df59d53f4ea1f3a76f470bb1c7f29555de9ee61bfbf643a30358";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common eigen ];
  propagatedBuildInputs = [ eigen osqp-vendor proxsuite rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "Interface for the QP solvers";
    license = with lib.licenses; [ asl20 ];
  };
}
