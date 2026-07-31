
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lanelet2-extension, autoware-lanelet2-utils, autoware-lint-common, autoware-map-msgs, autoware-planning-msgs, autoware-pyplot, autoware-test-utils, autoware-trajectory, autoware-utils-geometry, autoware-utils-math, geometry-msgs, rclcpp, rclcpp-components, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-autoware-route-handler";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_route_handler/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "32126bda96e9d5fbe3163f32926de47f40aaa1e8d210236502fdecd3ca02e31a";
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
