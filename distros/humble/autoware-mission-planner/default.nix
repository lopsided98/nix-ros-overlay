
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-component-interface-specs, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, autoware-motion-utils, autoware-planning-msgs, autoware-route-handler, autoware-test-utils, autoware-utils-geometry, autoware-utils-logging, autoware-utils-math, autoware-utils-system, autoware-utils-visualization, autoware-vehicle-info-utils, geometry-msgs, pluginlib, rclcpp, rclcpp-components, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-autoware-mission-planner";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_mission_planner/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "fdddaf8ebdf9f23d8a3a521b2df9ce9f28e54274902100b89027fa792328cfbd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common autoware-test-utils ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-component-interface-specs autoware-lanelet2-extension autoware-map-msgs autoware-motion-utils autoware-planning-msgs autoware-route-handler autoware-utils-geometry autoware-utils-logging autoware-utils-math autoware-utils-system autoware-utils-visualization autoware-vehicle-info-utils geometry-msgs pluginlib rclcpp rclcpp-components tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_mission_planner package";
    license = with lib.licenses; [ asl20 ];
  };
}
