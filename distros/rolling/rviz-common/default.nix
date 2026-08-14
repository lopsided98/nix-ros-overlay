
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, geometry-msgs, message-filters, pluginlib, qt5or6, rclcpp, resource-retriever, rviz-ogre-vendor, rviz-rendering, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, tinyxml-2, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-rviz-common";
  version = "16.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/rolling/rviz_common/16.0.2-1.tar.gz";
    name = "16.0.2-1.tar.gz";
    sha256 = "8b68d544f5d369ace345b8f39d67895f5deff7c07b829711a2ab44bba6c5a645";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-ros-core geometry-msgs message-filters pluginlib qt5or6.qtbase qt5or6.qtsvg rclcpp resource-retriever rviz-ogre-vendor rviz-rendering sensor-msgs std-msgs std-srvs tf2 tf2-ros tinyxml-2 yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Common rviz API, used by rviz plugins and applications.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
