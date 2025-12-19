
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, lifecycle-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-plansys2-lifecycle-manager";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/kilted/plansys2_lifecycle_manager/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "9d21441b2cf6bdb98728fa2ac66b78396fa31dfdf5b7e8f8d6c75cd1ce8e4621";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ lifecycle-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A controller/manager for the lifecycle nodes of the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
