
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, autoware-cmake, autoware-component-interface-specs, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, launch-testing-ament-cmake, rclcpp, rclcpp-components, ros-testing, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-autoware-map-projection-loader";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_map_projection_loader/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "d29ce436f56eaab5f7043c02425e55db8bdf9ece093352185b002da92097c079";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto autoware-lint-common launch-testing-ament-cmake ros-testing ];
  propagatedBuildInputs = [ autoware-component-interface-specs autoware-lanelet2-extension autoware-map-msgs rclcpp rclcpp-components yaml-cpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "autoware_map_projection_loader package as a ROS 2 node";
    license = with lib.licenses; [ asl20 ];
  };
}
