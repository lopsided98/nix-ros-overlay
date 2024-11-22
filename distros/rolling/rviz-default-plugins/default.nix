
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, geometry-msgs, gz-math-vendor, image-transport, interactive-markers, laser-geometry, map-msgs, nav-msgs, pluginlib, point-cloud-transport, qt5, rclcpp, resource-retriever, rviz-common, rviz-ogre-vendor, rviz-rendering, rviz-rendering-tests, rviz-visual-testing-framework, tf2, tf2-geometry-msgs, tf2-ros, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rviz-default-plugins";
  version = "14.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/rolling/rviz_default_plugins/14.3.2-1.tar.gz";
    name = "14.3.2-1.tar.gz";
    sha256 = "e7310819312a21a7f9bcdd7ae28b9acc90cbdf464e8c6cb94bf08fc127dcc416";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-cmake-lint-cmake ament-index-cpp ament-lint-auto ament-lint-common rviz-rendering-tests rviz-visual-testing-framework ];
  propagatedBuildInputs = [ geometry-msgs gz-math-vendor image-transport interactive-markers laser-geometry map-msgs nav-msgs pluginlib point-cloud-transport qt5.qtbase rclcpp resource-retriever rviz-common rviz-ogre-vendor rviz-rendering tf2 tf2-geometry-msgs tf2-ros urdf visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Several default plugins for rviz to cover the basic functionality.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
