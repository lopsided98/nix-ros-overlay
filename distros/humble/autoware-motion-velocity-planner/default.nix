
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-debug-msgs, autoware-internal-planning-msgs, autoware-lint-common, autoware-map-msgs, autoware-motion-utils, autoware-motion-velocity-planner-common, autoware-perception-msgs, autoware-planning-factor-interface, autoware-planning-msgs, autoware-planning-test-manager, autoware-utils-debug, autoware-utils-geometry, autoware-utils-logging, autoware-utils-pcl, autoware-utils-rclcpp, autoware-utils-system, autoware-velocity-smoother, boost, eigen, eigen3-cmake-module, geometry-msgs, grid-map-core, pcl-conversions, pluginlib, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-motion-velocity-planner";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_motion_velocity_planner/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "676564529b5a0431485d0d85d65b9e4691ca9dc2257d7f8d344c8ccd992247bc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module rosidl-default-generators ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common autoware-planning-test-manager ];
  propagatedBuildInputs = [ autoware-internal-debug-msgs autoware-internal-planning-msgs autoware-map-msgs autoware-motion-utils autoware-motion-velocity-planner-common autoware-perception-msgs autoware-planning-factor-interface autoware-planning-msgs autoware-utils-debug autoware-utils-geometry autoware-utils-logging autoware-utils-pcl autoware-utils-rclcpp autoware-utils-system autoware-velocity-smoother boost eigen geometry-msgs grid-map-core pcl-conversions pluginlib rclcpp rclcpp-components rosidl-default-runtime sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "Node of the motion_velocity_planner";
    license = with lib.licenses; [ asl20 ];
  };
}
