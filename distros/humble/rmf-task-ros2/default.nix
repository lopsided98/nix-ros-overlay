
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, ament-cmake-uncrustify, eigen, nlohmann-json-schema-validator-vendor, nlohmann_json, rclcpp, rmf-api-msgs, rmf-task-msgs, rmf-traffic, rmf-traffic-ros2, rmf-utils, rmf-websocket }:
buildRosPackage {
  pname = "ros-humble-rmf-task-ros2";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/humble/rmf_task_ros2/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "487505ee5d1cb9e501a1206104f71f60d5e768202b7c3fbdf1dba53a8adc11b8";
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
