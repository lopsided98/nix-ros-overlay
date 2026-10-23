
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, plansys2-core, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-humble-plansys2-lifecycle-manager";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/humble/plansys2_lifecycle_manager/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "0a44f88626df06b4d1f0f5fefab35ec5728e6c3728a8fb2a13c63c672e150389";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common rclcpp-lifecycle ];
  propagatedBuildInputs = [ lifecycle-msgs plansys2-core rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A controller/manager for the lifecycle nodes of the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
