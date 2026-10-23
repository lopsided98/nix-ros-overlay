
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, plansys2-core, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-jazzy-plansys2-lifecycle-manager";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/jazzy/plansys2_lifecycle_manager/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "f23ac3745c08f8affe8ba9604fc76e835bf1299bc421488fad573328e4f86873";
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
