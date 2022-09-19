
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, eigen, rclcpp, rmf-cmake-uncrustify, rmf-task-msgs, rmf-traffic, rmf-traffic-ros2, rmf-utils }:
buildRosPackage {
  pname = "ros-humble-rmf-task-ros2";
  version = "1.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/humble/rmf_task_ros2/1.4.0-3.tar.gz";
    name = "1.4.0-3.tar.gz";
    sha256 = "3c90651db18030b12d3fa3c3dbf8e8ce0857c89e4b7061b3cb0c78e55f11856f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-cmake-catch2 rmf-cmake-uncrustify ];
  propagatedBuildInputs = [ rclcpp rmf-task-msgs rmf-traffic rmf-traffic-ros2 rmf-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package managing the dispatching of tasks in RMF system.'';
    license = with lib.licenses; [ asl20 ];
  };
}
