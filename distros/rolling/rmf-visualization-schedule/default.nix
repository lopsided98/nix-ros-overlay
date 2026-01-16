
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, ament-lint-auto, ament-lint-common, boost, builtin-interfaces, eigen, geometry-msgs, openssl, rclcpp, rclcpp-components, rmf-traffic, rmf-traffic-msgs, rmf-traffic-ros2, rmf-utils, rmf-visualization-msgs, rosidl-default-generators, visualization-msgs, websocketpp }:
buildRosPackage {
  pname = "ros-rolling-rmf-visualization-schedule";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/rolling/rmf_visualization_schedule/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "21a765887171dd935a8e0f2d0779be1e99ff54bd99d75279067f65d6121ffb8b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-uncrustify ament-lint-auto ament-lint-common rmf-utils ];
  propagatedBuildInputs = [ boost builtin-interfaces eigen geometry-msgs openssl rclcpp rclcpp-components rmf-traffic rmf-traffic-msgs rmf-traffic-ros2 rmf-visualization-msgs rosidl-default-generators visualization-msgs websocketpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A visualizer for trajectories in rmf schedule";
    license = with lib.licenses; [ asl20 ];
  };
}
