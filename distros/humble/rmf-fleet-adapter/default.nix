
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, ament-cmake-uncrustify, eigen, nlohmann-json-schema-validator-vendor, nlohmann_json, rclcpp, rclcpp-components, rmf-api-msgs, rmf-battery, rmf-building-map-msgs, rmf-dispenser-msgs, rmf-door-msgs, rmf-fleet-msgs, rmf-ingestor-msgs, rmf-lift-msgs, rmf-task, rmf-task-msgs, rmf-task-ros2, rmf-task-sequence, rmf-traffic, rmf-traffic-ros2, rmf-utils, rmf-websocket, std-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-rmf-fleet-adapter";
  version = "2.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/humble/rmf_fleet_adapter/2.1.7-1.tar.gz";
    name = "2.1.7-1.tar.gz";
    sha256 = "628a50be5887850402532fca326ab80bc9aed0b37e2e86f3be3d72f8adb64569";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen yaml-cpp ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ nlohmann-json-schema-validator-vendor nlohmann_json rclcpp rclcpp-components rmf-api-msgs rmf-battery rmf-building-map-msgs rmf-dispenser-msgs rmf-door-msgs rmf-fleet-msgs rmf-ingestor-msgs rmf-lift-msgs rmf-task rmf-task-msgs rmf-task-ros2 rmf-task-sequence rmf-traffic rmf-traffic-ros2 rmf-utils rmf-websocket std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Fleet Adapter package for RMF fleets.'';
    license = with lib.licenses; [ asl20 ];
  };
}
