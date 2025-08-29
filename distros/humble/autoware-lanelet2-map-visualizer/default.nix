
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, autoware-cmake, autoware-lanelet2-extension, autoware-lint-common, autoware-map-loader, autoware-map-msgs, launch-testing-ament-cmake, rclcpp, rclcpp-components, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-lanelet2-map-visualizer";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_lanelet2_map_visualizer/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "e399a05caa0125f30530878545188578aa16cf21d1233777677d3b2e9f1531ee";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto autoware-lint-common autoware-map-loader launch-testing-ament-cmake ];
  propagatedBuildInputs = [ autoware-lanelet2-extension autoware-map-msgs rclcpp rclcpp-components visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_lanelet2_map_visualizer package";
    license = with lib.licenses; [ asl20 ];
  };
}
