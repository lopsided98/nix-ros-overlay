
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, ament-lint-auto, ament-lint-common, boost, builtin-interfaces, eigen, geometry-msgs, openssl, rclcpp, rclcpp-components, rmf-traffic, rmf-traffic-msgs, rmf-traffic-ros2, rmf-utils, rmf-visualization-msgs, rosidl-default-generators, visualization-msgs, websocketpp }:
buildRosPackage {
  pname = "ros-lyrical-rmf-visualization-schedule";
  version = "2.5.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/lyrical/rmf_visualization_schedule/2.5.1-3.tar.gz";
    name = "2.5.1-3.tar.gz";
    sha256 = "44191130299766e13b9470de6a07ffcb5d50b48bad2ca1877508b1edbf77d240";
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
