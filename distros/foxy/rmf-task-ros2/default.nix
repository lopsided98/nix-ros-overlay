
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-catch2, eigen, rclcpp, rmf-cmake-uncrustify, rmf-task-msgs, rmf-traffic, rmf-traffic-ros2, rmf-utils }:
buildRosPackage {
  pname = "ros-foxy-rmf-task-ros2";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/foxy/rmf_task_ros2/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "f1d65f23bbda5f441931a8491949fbef0a68dfdfedc87ff26853ac10076e3cbb";
  };

  buildType = "ament_cmake";
  buildInputs = [ eigen ];
  checkInputs = [ ament-cmake-catch2 rmf-cmake-uncrustify ];
  propagatedBuildInputs = [ rclcpp rmf-task-msgs rmf-traffic rmf-traffic-ros2 rmf-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package managing the dispatching of tasks in RMF system.'';
    license = with lib.licenses; [ asl20 ];
  };
}
