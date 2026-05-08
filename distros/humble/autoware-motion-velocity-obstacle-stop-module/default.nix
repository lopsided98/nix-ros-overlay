
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-planning-msgs, autoware-lint-common, autoware-motion-utils, autoware-motion-velocity-planner-common, autoware-perception-msgs, autoware-planning-msgs, autoware-signal-processing, autoware-test-utils, autoware-utils-debug, autoware-utils-geometry, autoware-utils-rclcpp, autoware-utils-system, autoware-utils-uuid, autoware-utils-visualization, autoware-vehicle-info-utils, boost, geometry-msgs, grid-map-core, pluginlib, rclcpp, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-motion-velocity-obstacle-stop-module";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_motion_velocity_obstacle_stop_module/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "cda6f8577ea92b70ae6862a01a943309aaf912d6b76b88ccf9fbe29bee64d3b9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto autoware-lint-common autoware-test-utils ];
  propagatedBuildInputs = [ autoware-internal-planning-msgs autoware-motion-utils autoware-motion-velocity-planner-common autoware-perception-msgs autoware-planning-msgs autoware-signal-processing autoware-utils-debug autoware-utils-geometry autoware-utils-rclcpp autoware-utils-system autoware-utils-uuid autoware-utils-visualization autoware-vehicle-info-utils boost geometry-msgs grid-map-core pluginlib rclcpp tf2 visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "obstacle stop feature in motion_velocity_planner";
    license = with lib.licenses; [ asl20 ];
  };
}
