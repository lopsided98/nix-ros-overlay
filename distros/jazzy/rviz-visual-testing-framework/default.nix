
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, qt5, rclcpp, rcutils, rviz-common, rviz-ogre-vendor, rviz-rendering, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-rviz-visual-testing-framework";
  version = "14.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/jazzy/rviz_visual_testing_framework/14.1.9-1.tar.gz";
    name = "14.1.9-1.tar.gz";
    sha256 = "c5a9890f8a2c7c47daf0089628b6326ac07034fbe4a7ae23fe6a218bcd97bb6a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gmock ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ ament-cmake-gtest geometry-msgs rclcpp rcutils rviz-common rviz-ogre-vendor rviz-rendering std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "3D testing framework for RViz.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
