
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, kairos, plansys2-core, pluginlib, popf, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-plansys2-popf-plan-solver";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/lyrical/plansys2_popf_plan_solver/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "a8f0e50ae0e8974b2c60a609b1bee6538def65caddab21cd4e7d38faf7ea3f66";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common kairos ];
  propagatedBuildInputs = [ ament-index-cpp plansys2-core pluginlib popf rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PlanSys2 plan solver plugin that runs the POPF temporal planner";
    license = with lib.licenses; [ asl20 ];
  };
}
