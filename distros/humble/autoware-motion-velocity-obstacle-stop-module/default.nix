
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-planning-msgs, autoware-lint-common, autoware-motion-utils, autoware-motion-velocity-planner-common, autoware-perception-msgs, autoware-planning-msgs, autoware-signal-processing, autoware-test-utils, autoware-utils-debug, autoware-utils-geometry, autoware-utils-rclcpp, autoware-utils-system, autoware-utils-uuid, autoware-utils-visualization, autoware-vehicle-info-utils, boost, geometry-msgs, grid-map-core, pluginlib, rclcpp, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-motion-velocity-obstacle-stop-module";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_motion_velocity_obstacle_stop_module/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "d9010e94da7442012fa5538a95fac4fe5306cb5bd8db081d4302961c173c02f3";
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
