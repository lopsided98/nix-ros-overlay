
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-component-interface-specs, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-test-utils, nav-msgs, rclcpp, tf2-msgs, tf2-ros, unique-identifier-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-autoware-planning-test-manager";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_planning_test_manager/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "f099a0e1c38cf3a56763f817b6938d922a40ecc880e92345203d50fcb18c527d";
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
