
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, ament-cmake-uncrustify, backward-ros, eigen, nlohmann-json-schema-validator-vendor, nlohmann_json, rclcpp, rmf-api-msgs, rmf-task-msgs, rmf-traffic, rmf-traffic-ros2, rmf-utils, rmf-websocket, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rmf-task-ros2";
  version = "2.12.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/lyrical/rmf_task_ros2/2.12.0-3.tar.gz";
    name = "2.12.0-3.tar.gz";
    sha256 = "b44325aa776fcdc8fcdf290b12b67bc602eb9abd0050d14885af8f76e0cad74f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ backward-ros nlohmann-json-schema-validator-vendor nlohmann_json rclcpp rmf-api-msgs rmf-task-msgs rmf-traffic rmf-traffic-ros2 rmf-utils rmf-websocket std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package managing the dispatching of tasks in RMF system.";
    license = with lib.licenses; [ asl20 ];
  };
}
