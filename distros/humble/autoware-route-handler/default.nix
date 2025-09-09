
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lanelet2-extension, autoware-lanelet2-utils, autoware-lint-common, autoware-map-msgs, autoware-planning-msgs, autoware-test-utils, autoware-utils-geometry, autoware-utils-math, geometry-msgs, rclcpp, rclcpp-components, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-autoware-route-handler";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_route_handler/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "7aff4a4016c0197da36281fa1b557c4061777ae33e7fcbaf3332ee9f410e8a75";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common autoware-test-utils ];
  propagatedBuildInputs = [ autoware-lanelet2-extension autoware-lanelet2-utils autoware-map-msgs autoware-planning-msgs autoware-utils-geometry autoware-utils-math geometry-msgs rclcpp rclcpp-components tf2-ros yaml-cpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The route_handling package";
    license = with lib.licenses; [ asl20 ];
  };
}
