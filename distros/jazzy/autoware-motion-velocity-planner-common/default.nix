
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-behavior-velocity-planner-common, autoware-cmake, autoware-internal-debug-msgs, autoware-internal-planning-msgs, autoware-lanelet2-extension, autoware-lint-common, autoware-motion-utils, autoware-object-recognition-utils, autoware-perception-msgs, autoware-planning-msgs, autoware-route-handler, autoware-utils-debug, autoware-utils-geometry, autoware-utils-math, autoware-utils-rclcpp, autoware-utils-visualization, autoware-velocity-smoother, boost, eigen, eigen3-cmake-module, geometry-msgs, rclcpp, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-motion-velocity-planner-common";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_motion_velocity_planner_common/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "3f08b5ec66d97750e4651e40df8eed37eef99c1f2bad8354a0d36e0f3f2d7093";
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
