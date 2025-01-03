
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-jazzy-plansys2-lifecycle-manager";
  version = "2.0.18-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/jazzy/plansys2_lifecycle_manager/2.0.18-1.tar.gz";
    name = "2.0.18-1.tar.gz";
    sha256 = "616655c61badf02a0761d3a8605017dcca245ce2745a2541db40fe359384295c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ lifecycle-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A controller/manager for the lifecycle nodes of the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
