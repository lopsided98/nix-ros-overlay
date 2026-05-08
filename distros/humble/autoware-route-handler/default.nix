
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lanelet2-extension, autoware-lanelet2-utils, autoware-lint-common, autoware-map-msgs, autoware-planning-msgs, autoware-pyplot, autoware-test-utils, autoware-trajectory, autoware-utils-geometry, autoware-utils-math, geometry-msgs, rclcpp, rclcpp-components, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-autoware-route-handler";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_route_handler/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "711835a366da2066d98f858f297b4f4a69c8918846260a38e7b53b810740bb80";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common autoware-pyplot autoware-test-utils ];
  propagatedBuildInputs = [ autoware-lanelet2-extension autoware-lanelet2-utils autoware-map-msgs autoware-planning-msgs autoware-trajectory autoware-utils-geometry autoware-utils-math geometry-msgs rclcpp rclcpp-components tf2-ros yaml-cpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The route_handling package";
    license = with lib.licenses; [ asl20 ];
  };
}
