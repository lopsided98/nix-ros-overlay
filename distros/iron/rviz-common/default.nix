
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, message-filters, pluginlib, qt5, rclcpp, resource-retriever, rviz-ogre-vendor, rviz-rendering, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, tinyxml2-vendor, urdf, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-iron-rviz-common";
  version = "12.4.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/iron/rviz_common/12.4.6-1.tar.gz";
    name = "12.4.6-1.tar.gz";
    sha256 = "549ff1d26355d451c9136a30533351d01817fe9df7815ba1941b9c97fdfc24a7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gmock ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs message-filters pluginlib qt5.qtbase qt5.qtsvg rclcpp resource-retriever rviz-ogre-vendor rviz-rendering sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros tinyxml2-vendor urdf yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Common rviz API, used by rviz plugins and applications.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
