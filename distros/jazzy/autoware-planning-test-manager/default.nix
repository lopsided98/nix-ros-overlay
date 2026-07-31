
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-component-interface-specs, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-route-handler, autoware-test-utils, autoware-utils-geometry, nav-msgs, rclcpp, tf2-msgs, tf2-ros, unique-identifier-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-autoware-planning-test-manager";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_planning_test_manager/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "efd12f40536574f228e4d21972faef51d5bc54eb542bcbb6c53866e597b9593c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-component-interface-specs autoware-motion-utils autoware-planning-msgs autoware-route-handler autoware-test-utils autoware-utils-geometry nav-msgs rclcpp tf2-msgs tf2-ros unique-identifier-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "ROS 2 node for testing interface of the nodes in planning module";
    license = with lib.licenses; [ asl20 ];
  };
}
