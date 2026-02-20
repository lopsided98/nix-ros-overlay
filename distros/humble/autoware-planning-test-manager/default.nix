
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-component-interface-specs, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-test-utils, nav-msgs, rclcpp, tf2-msgs, tf2-ros, unique-identifier-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-autoware-planning-test-manager";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_planning_test_manager/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "8bec46fb91d92ce5e676a2a529ff9e0109f259f57123877116cbbf4d5b30636a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-component-interface-specs autoware-motion-utils autoware-planning-msgs autoware-test-utils nav-msgs rclcpp tf2-msgs tf2-ros unique-identifier-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "ROS 2 node for testing interface of the nodes in planning module";
    license = with lib.licenses; [ asl20 ];
  };
}
