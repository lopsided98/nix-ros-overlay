
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, behaviortree-cpp, geometry-msgs, lifecycle-msgs, plansys2-core, plansys2-executor, plansys2-msgs, rclcpp, rclcpp-action, rclcpp-cascade-lifecycle, rclcpp-lifecycle, std-msgs, test-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kilted-plansys2-bt-actions";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/kilted/plansys2_bt_actions/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "a4e3c5607900d4f3843782707c8704835987135267f91313d35049ae7610f88d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-index-cpp ament-lint-auto ament-lint-common geometry-msgs plansys2-core plansys2-msgs rclcpp-cascade-lifecycle test-msgs tf2-geometry-msgs ];
  propagatedBuildInputs = [ behaviortree-cpp lifecycle-msgs plansys2-executor rclcpp rclcpp-action rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Base classes to implement PlanSys2 actions as behavior trees (BT.CPP)";
    license = with lib.licenses; [ asl20 ];
  };
}
