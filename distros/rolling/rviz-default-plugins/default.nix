
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-ros-core, ament-index-cpp, ament-lint-auto, ament-lint-common, geometry-msgs, gz-math-vendor, image-transport, interactive-markers, laser-geometry, map-msgs, nav-msgs, pluginlib, point-cloud-transport, qt5or6, rclcpp, resource-retriever, resource-retriever-service-plugin, rviz-common, rviz-ogre-vendor, rviz-rendering, rviz-rendering-tests, rviz-visual-testing-framework, tf2, tf2-geometry-msgs, tf2-ros, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rviz-default-plugins";
  version = "16.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/rolling/rviz_default_plugins/16.0.2-1.tar.gz";
    name = "16.0.2-1.tar.gz";
    sha256 = "9286dddee75d9f21ecc6e63db584314848e6ee0c5b315e5d5087e9b8de7006e6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-cmake-lint-cmake ament-index-cpp ament-lint-auto ament-lint-common rviz-rendering-tests rviz-visual-testing-framework ];
  propagatedBuildInputs = [ ament-cmake-ros-core geometry-msgs gz-math-vendor image-transport interactive-markers laser-geometry map-msgs nav-msgs pluginlib point-cloud-transport qt5or6.qtbase rclcpp resource-retriever resource-retriever-service-plugin rviz-common rviz-ogre-vendor rviz-rendering tf2 tf2-geometry-msgs tf2-ros urdf visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ament-cmake-ros-core ];

  meta = {
    description = "Several default plugins for rviz to cover the basic functionality.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
