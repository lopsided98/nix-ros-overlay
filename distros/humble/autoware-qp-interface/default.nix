
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, eigen, osqp-vendor, proxsuite, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-qp-interface";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_qp_interface/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "8701ad3158c7fb70fd026f46003c709931228d1ab05f823e36551709fbd7e1ed";
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
