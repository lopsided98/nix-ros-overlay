
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, builtin-interfaces, eigen, geometry-msgs, nav-msgs, opencv, openssl, rclcpp, rmf-building-map-msgs, rmf-cmake-uncrustify, rmf-traffic, rmf-traffic-msgs, rmf-traffic-ros2, rmf-visualization-msgs, rosidl-default-generators, visualization-msgs, websocketpp }:
buildRosPackage {
  pname = "ros-humble-rmf-visualization-schedule";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/humble/rmf_visualization_schedule/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "06e9dbf3c53aef558d6552c07c6c3488f539029add85520a1e57e36f5f3b8efb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common rmf-cmake-uncrustify ];
  propagatedBuildInputs = [ boost builtin-interfaces eigen geometry-msgs nav-msgs opencv openssl rclcpp rmf-building-map-msgs rmf-traffic rmf-traffic-msgs rmf-traffic-ros2 rmf-visualization-msgs rosidl-default-generators visualization-msgs websocketpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A visualizer for trajectories in rmf schedule'';
    license = with lib.licenses; [ asl20 ];
  };
}
