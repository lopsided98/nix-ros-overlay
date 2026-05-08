
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-debug-msgs, autoware-internal-planning-msgs, autoware-interpolation, autoware-lint-common, autoware-motion-utils, autoware-osqp-interface, autoware-planning-msgs, autoware-planning-test-manager, autoware-qp-interface, autoware-trajectory, autoware-utils-debug, autoware-utils-diagnostics, autoware-utils-geometry, autoware-utils-logging, autoware-utils-math, autoware-utils-rclcpp, autoware-vehicle-info-utils, eigen3-cmake-module, geometry-msgs, nav-msgs, rclcpp, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-autoware-velocity-smoother";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_velocity_smoother/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "a0c7c3941c3409d1afd5fe310f3552f6998d2ace1e022bd4feeeb578365d99c9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-internal-debug-msgs autoware-internal-planning-msgs autoware-interpolation autoware-motion-utils autoware-osqp-interface autoware-planning-msgs autoware-planning-test-manager autoware-qp-interface autoware-trajectory autoware-utils-debug autoware-utils-diagnostics autoware-utils-geometry autoware-utils-logging autoware-utils-math autoware-utils-rclcpp autoware-vehicle-info-utils geometry-msgs nav-msgs rclcpp tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The autoware_velocity_smoother package";
    license = with lib.licenses; [ asl20 ];
  };
}
