
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, lifecycle-msgs, plansys2-msgs, plansys2-pddl-parser, rclcpp, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-humble-plansys2-core";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/humble/plansys2_core/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "eedc7f7695a5f122fac3d2adadb9d5c86c7b510429ad1c1708f12d7e1d196f33";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common std-msgs ];
  propagatedBuildInputs = [ ament-index-cpp lifecycle-msgs plansys2-msgs plansys2-pddl-parser rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains the PDDL-based core  for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
