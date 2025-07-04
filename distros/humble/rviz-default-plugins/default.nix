
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-index-cpp, ament-lint-auto, geometry-msgs, ignition-math6-vendor, image-transport, interactive-markers, laser-geometry, map-msgs, nav-msgs, pluginlib, qt5, rclcpp, resource-retriever, rviz-common, rviz-ogre-vendor, rviz-rendering, rviz-rendering-tests, rviz-visual-testing-framework, tf2, tf2-geometry-msgs, tf2-ros, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-rviz-default-plugins";
  version = "11.2.18-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/humble/rviz_default_plugins/11.2.18-1.tar.gz";
    name = "11.2.18-1.tar.gz";
    sha256 = "77ee690c272c1a7982b2cc72e6d7b9e2f07484c992505fc0da570de81f9e6785";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gmock ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-index-cpp ament-lint-auto rviz-rendering-tests rviz-visual-testing-framework ];
  propagatedBuildInputs = [ geometry-msgs ignition-math6-vendor image-transport interactive-markers laser-geometry map-msgs nav-msgs pluginlib qt5.qtbase rclcpp resource-retriever rviz-common rviz-ogre-vendor rviz-rendering tf2 tf2-geometry-msgs tf2-ros urdf visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Several default plugins for rviz to cover the basic functionality.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
