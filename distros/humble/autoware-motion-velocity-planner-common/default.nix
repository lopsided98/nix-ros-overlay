
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-behavior-velocity-planner-common, autoware-cmake, autoware-internal-debug-msgs, autoware-internal-planning-msgs, autoware-lanelet2-extension, autoware-lint-common, autoware-motion-utils, autoware-object-recognition-utils, autoware-perception-msgs, autoware-planning-msgs, autoware-route-handler, autoware-utils-debug, autoware-utils-geometry, autoware-utils-math, autoware-utils-rclcpp, autoware-utils-visualization, autoware-velocity-smoother, boost, eigen, eigen3-cmake-module, geometry-msgs, rclcpp, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-motion-velocity-planner-common";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_motion_velocity_planner_common/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "698404886e4938f2c5e0988f0ebbd74031f1feb88095d4771ea62d66bd300a65";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-behavior-velocity-planner-common autoware-internal-debug-msgs autoware-internal-planning-msgs autoware-lanelet2-extension autoware-motion-utils autoware-object-recognition-utils autoware-perception-msgs autoware-planning-msgs autoware-route-handler autoware-utils-debug autoware-utils-geometry autoware-utils-math autoware-utils-rclcpp autoware-utils-visualization autoware-velocity-smoother boost eigen geometry-msgs rclcpp visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "Common functions and interfaces for motion_velocity_planner modules";
    license = with lib.licenses; [ asl20 ];
  };
}
