
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, ament-cmake-uncrustify, eigen, nlohmann-json-schema-validator-vendor, nlohmann_json, rclcpp, rmf-api-msgs, rmf-task-msgs, rmf-traffic, rmf-traffic-ros2, rmf-utils, rmf-websocket }:
buildRosPackage {
  pname = "ros-rolling-rmf-task-ros2";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/rolling/rmf_task_ros2/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "4ec0e9d490549fd564bad10ffd8489d34a33c342abf5b1853e072bf54ad3a382";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ nlohmann-json-schema-validator-vendor nlohmann_json rclcpp rmf-api-msgs rmf-task-msgs rmf-traffic rmf-traffic-ros2 rmf-utils rmf-websocket ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package managing the dispatching of tasks in RMF system.'';
    license = with lib.licenses; [ asl20 ];
  };
}
