
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, geometry-msgs, gz-math-vendor, image-transport, interactive-markers, laser-geometry, map-msgs, nav-msgs, pluginlib, point-cloud-transport, qt6, rclcpp, resource-retriever, resource-retriever-service-plugin, rviz-common, rviz-ogre-vendor, rviz-rendering, rviz-rendering-tests, rviz-visual-testing-framework, tf2, tf2-geometry-msgs, tf2-ros, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rviz-default-plugins";
  version = "15.2.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/lyrical/rviz_default_plugins/15.2.2-3.tar.gz";
    name = "15.2.2-3.tar.gz";
    sha256 = "736c52b123f7aa5e55c67b1faedfef6b9646ea8e210697a0d444a15883b83a40";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-cmake-lint-cmake ament-index-cpp ament-lint-auto ament-lint-common rviz-rendering-tests rviz-visual-testing-framework ];
  propagatedBuildInputs = [ geometry-msgs gz-math-vendor image-transport interactive-markers laser-geometry map-msgs nav-msgs pluginlib point-cloud-transport qt6.qtbase rclcpp resource-retriever resource-retriever-service-plugin rviz-common rviz-ogre-vendor rviz-rendering tf2 tf2-geometry-msgs tf2-ros urdf visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Several default plugins for rviz to cover the basic functionality.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
