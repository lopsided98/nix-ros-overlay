
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-planning-msgs, autoware-lint-common, autoware-motion-utils, autoware-motion-velocity-planner, autoware-motion-velocity-planner-common, autoware-perception-msgs, autoware-planning-msgs, autoware-utils-debug, autoware-utils-geometry, autoware-utils-rclcpp, autoware-utils-system, autoware-utils-uuid, autoware-utils-visualization, autoware-vehicle-info-utils, boost, geometry-msgs, grid-map-core, pluginlib, rclcpp, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-motion-velocity-obstacle-stop-module";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_motion_velocity_obstacle_stop_module/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "13623322fa6638d6c23839a91f546107157e2ed3ec9d82c191ea02852e1bbbef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-internal-planning-msgs autoware-motion-utils autoware-motion-velocity-planner autoware-motion-velocity-planner-common autoware-perception-msgs autoware-planning-msgs autoware-utils-debug autoware-utils-geometry autoware-utils-rclcpp autoware-utils-system autoware-utils-uuid autoware-utils-visualization autoware-vehicle-info-utils boost geometry-msgs grid-map-core pluginlib rclcpp tf2 visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "obstacle stop feature in motion_velocity_planner";
    license = with lib.licenses; [ asl20 ];
  };
}
