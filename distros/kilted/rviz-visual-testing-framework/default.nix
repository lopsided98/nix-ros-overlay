
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, qt5, rclcpp, rcutils, rviz-common, rviz-ogre-vendor, rviz-rendering, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-rviz-visual-testing-framework";
  version = "15.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/kilted/rviz_visual_testing_framework/15.0.3-1.tar.gz";
    name = "15.0.3-1.tar.gz";
    sha256 = "f598900806db890e1690d3783d6c4753c3e91a34aeb063ed06cb5f2854107e20";
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
