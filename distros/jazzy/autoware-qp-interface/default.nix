
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, eigen, osqp-vendor, proxsuite, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-autoware-qp-interface";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_qp_interface/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "e47a2e8df25b17212ecdf6091e0f46da7feb7aa7c26a6167e6a0f4815db4b233";
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
