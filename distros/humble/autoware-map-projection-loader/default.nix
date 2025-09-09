
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, autoware-cmake, autoware-component-interface-specs, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, rclcpp, rclcpp-components, ros-testing, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-autoware-map-projection-loader";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_map_projection_loader/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "ea8777a79986e1ff59e39dc8aaf8be0d8f91a7d27301acaabde791493dc945ed";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto autoware-lint-common ros-testing ];
  propagatedBuildInputs = [ autoware-component-interface-specs autoware-lanelet2-extension autoware-map-msgs rclcpp rclcpp-components yaml-cpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "autoware_map_projection_loader package as a ROS 2 node";
    license = with lib.licenses; [ asl20 ];
  };
}
