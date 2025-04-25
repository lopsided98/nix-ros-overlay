
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, message-filters, pluginlib, qt5, rclcpp, resource-retriever, rviz-ogre-vendor, rviz-rendering, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, tinyxml2-vendor, urdf, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-rviz-common";
  version = "14.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/jazzy/rviz_common/14.1.9-1.tar.gz";
    name = "14.1.9-1.tar.gz";
    sha256 = "cbcbe87d48f0429e15d9a735655685bd7c736eec8630af858a39805ff8da66fb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gmock ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs message-filters pluginlib qt5.qtbase qt5.qtsvg rclcpp resource-retriever rviz-ogre-vendor rviz-rendering sensor-msgs std-msgs std-srvs tf2 tf2-ros tinyxml2-vendor urdf yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Common rviz API, used by rviz plugins and applications.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
