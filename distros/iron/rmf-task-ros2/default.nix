
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, ament-cmake-uncrustify, eigen, nlohmann-json-schema-validator-vendor, nlohmann_json, rclcpp, rmf-api-msgs, rmf-task-msgs, rmf-traffic, rmf-traffic-ros2, rmf-utils, rmf-websocket }:
buildRosPackage {
  pname = "ros-iron-rmf-task-ros2";
  version = "2.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/iron/rmf_task_ros2/2.2.4-1.tar.gz";
    name = "2.2.4-1.tar.gz";
    sha256 = "f3827611760ae71e9f6577070d5311f2dee2e25a21801fc193a19b0f3a9a986b";
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
