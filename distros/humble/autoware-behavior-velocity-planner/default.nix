
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-behavior-velocity-planner-common, autoware-cmake, autoware-internal-debug-msgs, autoware-internal-planning-msgs, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, autoware-motion-utils, autoware-perception-msgs, autoware-planning-msgs, autoware-route-handler, autoware-trajectory, autoware-utils-debug, autoware-utils-logging, autoware-utils-pcl, autoware-utils-rclcpp, autoware-velocity-smoother, boost, diagnostic-msgs, eigen, eigen3-cmake-module, geometry-msgs, pcl-conversions, pluginlib, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-behavior-velocity-planner";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_behavior_velocity_planner/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "3dc9696fb7d81e67517ae4ca7166fc7f91f7b949b48653c4adfffd68d08f9acd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-behavior-velocity-planner-common autoware-internal-debug-msgs autoware-internal-planning-msgs autoware-lanelet2-extension autoware-map-msgs autoware-motion-utils autoware-perception-msgs autoware-planning-msgs autoware-route-handler autoware-trajectory autoware-utils-debug autoware-utils-logging autoware-utils-pcl autoware-utils-rclcpp autoware-velocity-smoother boost diagnostic-msgs eigen geometry-msgs pcl-conversions pluginlib rclcpp rclcpp-components sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The autoware_behavior_velocity_planner package";
    license = with lib.licenses; [ asl20 ];
  };
}
