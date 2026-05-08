
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, eigen, osqp-vendor, proxsuite, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-qp-interface";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_qp_interface/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "df90962f28c7ffc06e3bdc53fc2182676c842efe0d9d6113b37fadc2e8b69215";
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
