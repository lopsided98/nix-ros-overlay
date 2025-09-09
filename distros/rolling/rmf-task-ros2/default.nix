
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, ament-cmake-uncrustify, backward-ros, eigen, nlohmann-json-schema-validator-vendor, nlohmann_json, rclcpp, rmf-api-msgs, rmf-task-msgs, rmf-traffic, rmf-traffic-ros2, rmf-utils, rmf-websocket, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-task-ros2";
  version = "2.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/rolling/rmf_task_ros2/2.11.1-1.tar.gz";
    name = "2.11.1-1.tar.gz";
    sha256 = "a01ef987a32560695aab48434983a0250655b27cbf86ae153d652249d88ea7ed";
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
