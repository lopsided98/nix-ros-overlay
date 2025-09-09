
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-debug-msgs, autoware-internal-planning-msgs, autoware-interpolation, autoware-lint-common, autoware-motion-utils, autoware-osqp-interface, autoware-planning-msgs, autoware-planning-test-manager, autoware-qp-interface, autoware-utils-debug, autoware-utils-diagnostics, autoware-utils-geometry, autoware-utils-logging, autoware-utils-math, autoware-utils-rclcpp, autoware-vehicle-info-utils, eigen3-cmake-module, geometry-msgs, nav-msgs, rclcpp, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-autoware-velocity-smoother";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_velocity_smoother/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "de5ed7665e72345453c0275b935a1a265936dbc2933ee5cee6bb45286b01eb87";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-internal-debug-msgs autoware-internal-planning-msgs autoware-interpolation autoware-motion-utils autoware-osqp-interface autoware-planning-msgs autoware-planning-test-manager autoware-qp-interface autoware-utils-debug autoware-utils-diagnostics autoware-utils-geometry autoware-utils-logging autoware-utils-math autoware-utils-rclcpp autoware-vehicle-info-utils geometry-msgs nav-msgs rclcpp tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The autoware_velocity_smoother package";
    license = with lib.licenses; [ asl20 ];
  };
}
