
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-behavior-velocity-planner-common, autoware-cmake, autoware-internal-debug-msgs, autoware-internal-planning-msgs, autoware-lint-common, autoware-map-msgs, autoware-motion-utils, autoware-perception-msgs, autoware-planning-msgs, autoware-route-handler, autoware-trajectory, autoware-utils-debug, autoware-utils-logging, autoware-utils-pcl, autoware-utils-rclcpp, autoware-velocity-smoother, boost, diagnostic-msgs, eigen, eigen3-cmake-module, geometry-msgs, pcl-conversions, pluginlib, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-behavior-velocity-planner";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_behavior_velocity_planner/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "9d0535fc15448194f39dda634dc7bcdf50df170e91c3e53e86ae4b22b452114e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-behavior-velocity-planner-common autoware-internal-debug-msgs autoware-internal-planning-msgs autoware-map-msgs autoware-motion-utils autoware-perception-msgs autoware-planning-msgs autoware-route-handler autoware-trajectory autoware-utils-debug autoware-utils-logging autoware-utils-pcl autoware-utils-rclcpp autoware-velocity-smoother boost diagnostic-msgs eigen geometry-msgs pcl-conversions pluginlib rclcpp rclcpp-components sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The autoware_behavior_velocity_planner package";
    license = with lib.licenses; [ asl20 ];
  };
}
