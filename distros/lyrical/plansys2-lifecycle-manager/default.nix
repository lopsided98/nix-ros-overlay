
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, plansys2-core, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-lyrical-plansys2-lifecycle-manager";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/lyrical/plansys2_lifecycle_manager/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "72317bde7e1e6e736b2ea8a4e0ee0e057f83e8296e833ae52b52954e4421af8b";
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
