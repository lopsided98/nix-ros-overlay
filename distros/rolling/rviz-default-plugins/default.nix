
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-ros-core, ament-index-cpp, ament-lint-auto, ament-lint-common, geometry-msgs, gz-math-vendor, image-transport, interactive-markers, laser-geometry, map-msgs, nav-msgs, pluginlib, point-cloud-transport, qt6, rclcpp, resource-retriever, resource-retriever-service-plugin, rviz-common, rviz-ogre-vendor, rviz-rendering, rviz-rendering-tests, rviz-visual-testing-framework, tf2, tf2-geometry-msgs, tf2-ros, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rviz-default-plugins";
  version = "16.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/rolling/rviz_default_plugins/16.0.4-1.tar.gz";
    name = "16.0.4-1.tar.gz";
    sha256 = "006a4285a147bc343a1e9e215c4ed58bae81c112ebbbbe23880318d40365b541";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-cmake-lint-cmake ament-index-cpp ament-lint-auto ament-lint-common rviz-rendering-tests rviz-visual-testing-framework ];
  propagatedBuildInputs = [ ament-cmake-ros-core geometry-msgs gz-math-vendor image-transport interactive-markers laser-geometry map-msgs nav-msgs pluginlib point-cloud-transport qt6.qtbase rclcpp resource-retriever resource-retriever-service-plugin rviz-common rviz-ogre-vendor rviz-rendering tf2 tf2-geometry-msgs tf2-ros urdf visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ament-cmake-ros-core ];

  meta = {
    description = "Several default plugins for rviz to cover the basic functionality.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
