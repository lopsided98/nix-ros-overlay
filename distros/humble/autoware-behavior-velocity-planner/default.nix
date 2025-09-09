
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-behavior-velocity-planner-common, autoware-cmake, autoware-internal-debug-msgs, autoware-internal-planning-msgs, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, autoware-motion-utils, autoware-perception-msgs, autoware-planning-msgs, autoware-route-handler, autoware-utils-debug, autoware-utils-logging, autoware-utils-pcl, autoware-utils-rclcpp, autoware-velocity-smoother, boost, diagnostic-msgs, eigen, eigen3-cmake-module, geometry-msgs, pcl-conversions, pluginlib, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-behavior-velocity-planner";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_behavior_velocity_planner/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "df2653526103043de02bf4a7fc427b0b13cd9c2bc806bbf9c6ddc0f7d7176a1f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-behavior-velocity-planner-common autoware-internal-debug-msgs autoware-internal-planning-msgs autoware-lanelet2-extension autoware-map-msgs autoware-motion-utils autoware-perception-msgs autoware-planning-msgs autoware-route-handler autoware-utils-debug autoware-utils-logging autoware-utils-pcl autoware-utils-rclcpp autoware-velocity-smoother boost diagnostic-msgs eigen geometry-msgs pcl-conversions pluginlib rclcpp rclcpp-components sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The autoware_behavior_velocity_planner package";
    license = with lib.licenses; [ asl20 ];
  };
}
