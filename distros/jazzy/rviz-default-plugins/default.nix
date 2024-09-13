
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-uncrustify, ament-cmake-xmllint, ament-index-cpp, ament-lint-auto, geometry-msgs, gz-math-vendor, image-transport, interactive-markers, laser-geometry, map-msgs, nav-msgs, pluginlib, point-cloud-transport, qt5, rclcpp, resource-retriever, rviz-common, rviz-ogre-vendor, rviz-rendering, rviz-rendering-tests, rviz-visual-testing-framework, tf2, tf2-geometry-msgs, tf2-ros, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rviz-default-plugins";
  version = "14.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/jazzy/rviz_default_plugins/14.1.5-1.tar.gz";
    name = "14.1.5-1.tar.gz";
    sha256 = "ba87de3b7553bce12101be8732e078a3e6ac615bb178d4c625421ccc3f2c4c73";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gmock ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-index-cpp ament-lint-auto rviz-rendering-tests rviz-visual-testing-framework ];
  propagatedBuildInputs = [ geometry-msgs gz-math-vendor image-transport interactive-markers laser-geometry map-msgs nav-msgs pluginlib point-cloud-transport qt5.qtbase rclcpp resource-retriever rviz-common rviz-ogre-vendor rviz-rendering tf2 tf2-geometry-msgs tf2-ros urdf visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Several default plugins for rviz to cover the basic functionality.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
