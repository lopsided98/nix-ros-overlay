
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-agnocast-wrapper, autoware-cmake, autoware-internal-debug-msgs, autoware-internal-planning-msgs, autoware-lint-common, autoware-map-msgs, autoware-motion-utils, autoware-motion-velocity-planner-common, autoware-perception-msgs, autoware-planning-factor-interface, autoware-planning-msgs, autoware-test-utils, autoware-utils-debug, autoware-utils-geometry, autoware-utils-logging, autoware-utils-pcl, autoware-utils-rclcpp, autoware-utils-system, autoware-velocity-smoother, boost, eigen, eigen3-cmake-module, geometry-msgs, grid-map-core, pcl-conversions, pluginlib, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-motion-velocity-planner";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_motion_velocity_planner/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "7f10bedb11c870d015b7cfe7b93775702d1cb81482f3045815ddcf569acd5d21";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module rosidl-default-generators ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common autoware-test-utils ];
  propagatedBuildInputs = [ autoware-agnocast-wrapper autoware-internal-debug-msgs autoware-internal-planning-msgs autoware-map-msgs autoware-motion-utils autoware-motion-velocity-planner-common autoware-perception-msgs autoware-planning-factor-interface autoware-planning-msgs autoware-utils-debug autoware-utils-geometry autoware-utils-logging autoware-utils-pcl autoware-utils-rclcpp autoware-utils-system autoware-velocity-smoother boost eigen geometry-msgs grid-map-core pcl-conversions pluginlib rclcpp rclcpp-components rosidl-default-runtime sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "Node of the motion_velocity_planner";
    license = with lib.licenses; [ asl20 ];
  };
}
