
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, qt5, rclcpp, rcutils, rviz-common, rviz-ogre-vendor, rviz-rendering, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-rviz-visual-testing-framework";
  version = "15.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/kilted/rviz_visual_testing_framework/15.0.11-1.tar.gz";
    name = "15.0.11-1.tar.gz";
    sha256 = "04b99538c97c96323111319709a5bed116e48e222524c66b36eba36fa6bef8fc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-gtest geometry-msgs rclcpp rcutils rviz-common rviz-ogre-vendor rviz-rendering std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "3D testing framework for RViz.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
