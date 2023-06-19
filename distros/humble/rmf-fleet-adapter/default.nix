
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, ament-cmake-uncrustify, eigen, libyamlcpp, nlohmann-json-schema-validator-vendor, nlohmann_json, rclcpp, rclcpp-components, rmf-api-msgs, rmf-battery, rmf-building-map-msgs, rmf-dispenser-msgs, rmf-door-msgs, rmf-fleet-msgs, rmf-ingestor-msgs, rmf-lift-msgs, rmf-task, rmf-task-msgs, rmf-task-ros2, rmf-task-sequence, rmf-traffic, rmf-traffic-ros2, rmf-utils, rmf-websocket, std-msgs }:
buildRosPackage {
  pname = "ros-humble-rmf-fleet-adapter";
  version = "2.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/humble/rmf_fleet_adapter/2.1.6-1.tar.gz";
    name = "2.1.6-1.tar.gz";
    sha256 = "f92f1e9664480a79f77d94b62cfa2415da550aa5a2ef1d75458dab8a2231c32f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen libyamlcpp ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ nlohmann-json-schema-validator-vendor nlohmann_json rclcpp rclcpp-components rmf-api-msgs rmf-battery rmf-building-map-msgs rmf-dispenser-msgs rmf-door-msgs rmf-fleet-msgs rmf-ingestor-msgs rmf-lift-msgs rmf-task rmf-task-msgs rmf-task-ros2 rmf-task-sequence rmf-traffic rmf-traffic-ros2 rmf-utils rmf-websocket std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Fleet Adapter package for RMF fleets.'';
    license = with lib.licenses; [ asl20 ];
  };
}
