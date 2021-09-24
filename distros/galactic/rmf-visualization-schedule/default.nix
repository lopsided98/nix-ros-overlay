
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, builtin-interfaces, eigen, geometry-msgs, nav-msgs, opencv3, openssl, rclcpp, rmf-building-map-msgs, rmf-cmake-uncrustify, rmf-traffic, rmf-traffic-msgs, rmf-traffic-ros2, rmf-visualization-msgs, rosidl-default-generators, visualization-msgs, websocketpp }:
buildRosPackage {
  pname = "ros-galactic-rmf-visualization-schedule";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/galactic/rmf_visualization_schedule/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "bf5919550483e14e591ae71baa81edb6f21440a68412eaaa9f5cc2dc8bc0c6a2";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common rmf-cmake-uncrustify ];
  propagatedBuildInputs = [ boost builtin-interfaces eigen geometry-msgs nav-msgs opencv3 openssl rclcpp rmf-building-map-msgs rmf-traffic rmf-traffic-msgs rmf-traffic-ros2 rmf-visualization-msgs rosidl-default-generators visualization-msgs websocketpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A visualizer for trajectories in rmf schedule'';
    license = with lib.licenses; [ asl20 ];
  };
}
