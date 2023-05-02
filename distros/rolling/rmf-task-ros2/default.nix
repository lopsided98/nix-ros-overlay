
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, ament-cmake-uncrustify, eigen, nlohmann-json-schema-validator-vendor, nlohmann_json, rclcpp, rmf-api-msgs, rmf-task-msgs, rmf-traffic, rmf-traffic-ros2, rmf-utils, rmf-websocket }:
buildRosPackage {
  pname = "ros-rolling-rmf-task-ros2";
  version = "2.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/rolling/rmf_task_ros2/2.1.2-2.tar.gz";
    name = "2.1.2-2.tar.gz";
    sha256 = "645ab51cd28fb71e1acad4139b1ed37998633dbad2959113a7bc2fdd5183fbba";
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
