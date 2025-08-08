
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, behaviortree-cpp, geometry-msgs, plansys2-executor, plansys2-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, test-msgs }:
buildRosPackage {
  pname = "ros-kilted-plansys2-bt-actions";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/kilted/plansys2_bt_actions/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "ad15f8dc7f1638888cf1841464fa5c2b50c55f43b567985488f513c6c4956a5a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs plansys2-msgs test-msgs ];
  propagatedBuildInputs = [ behaviortree-cpp plansys2-executor rclcpp rclcpp-action rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains the Problem Expert module for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
