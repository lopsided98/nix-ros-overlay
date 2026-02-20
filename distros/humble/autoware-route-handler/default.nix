
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lanelet2-extension, autoware-lanelet2-utils, autoware-lint-common, autoware-map-msgs, autoware-planning-msgs, autoware-test-utils, autoware-utils-geometry, autoware-utils-math, geometry-msgs, rclcpp, rclcpp-components, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-autoware-route-handler";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_route_handler/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "0d9e292b006e3c51fb04649d92f159f0ec0f3288b1584255916f12ab22d60739";
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
