
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-component-interface-specs, autoware-internal-debug-msgs, autoware-lanelet2-extension, autoware-lanelet2-utils, autoware-lint-common, autoware-map-msgs, autoware-motion-utils, autoware-planning-msgs, autoware-route-handler, autoware-test-utils, autoware-utils-geometry, autoware-utils-logging, autoware-utils-math, autoware-utils-system, autoware-utils-visualization, autoware-vehicle-info-utils, geometry-msgs, pluginlib, rclcpp, rclcpp-components, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-autoware-mission-planner";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_mission_planner/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "4518af471859b3602f81c132cdeb6abce11042139f6cf9be0a309f13e8b4c2d0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common autoware-test-utils ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-component-interface-specs autoware-internal-debug-msgs autoware-lanelet2-extension autoware-lanelet2-utils autoware-map-msgs autoware-motion-utils autoware-planning-msgs autoware-route-handler autoware-utils-geometry autoware-utils-logging autoware-utils-math autoware-utils-system autoware-utils-visualization autoware-vehicle-info-utils geometry-msgs pluginlib rclcpp rclcpp-components tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_mission_planner package";
    license = with lib.licenses; [ asl20 ];
  };
}
