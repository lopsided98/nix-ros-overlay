
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-component-interface-specs, autoware-internal-debug-msgs, autoware-lanelet2-utils, autoware-lint-common, autoware-map-msgs, autoware-motion-utils, autoware-planning-msgs, autoware-route-handler, autoware-test-utils, autoware-utils-geometry, autoware-utils-logging, autoware-utils-math, autoware-utils-system, autoware-utils-visualization, autoware-vehicle-info-utils, geometry-msgs, pluginlib, rclcpp, rclcpp-components, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-autoware-mission-planner";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_mission_planner/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "0370167b0099c93d8b1174a9b746db03fb0f51683c789e3a76416d8d00a81829";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common autoware-test-utils ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-component-interface-specs autoware-internal-debug-msgs autoware-lanelet2-utils autoware-map-msgs autoware-motion-utils autoware-planning-msgs autoware-route-handler autoware-utils-geometry autoware-utils-logging autoware-utils-math autoware-utils-system autoware-utils-visualization autoware-vehicle-info-utils geometry-msgs pluginlib rclcpp rclcpp-components tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_mission_planner package";
    license = with lib.licenses; [ asl20 ];
  };
}
