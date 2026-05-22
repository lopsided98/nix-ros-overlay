
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, qt6, rclcpp, rcutils, rviz-common, rviz-ogre-vendor, rviz-rendering, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-rviz-visual-testing-framework";
  version = "15.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/lyrical/rviz_visual_testing_framework/15.2.3-1.tar.gz";
    name = "15.2.3-1.tar.gz";
    sha256 = "87d80241d76a9cc5bad8c15305604a0d6d8c2f859cc971544c1fe6131afe63a7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt6.qtbase ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-gtest geometry-msgs rclcpp rcutils rviz-common rviz-ogre-vendor rviz-rendering std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "3D testing framework for RViz.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
