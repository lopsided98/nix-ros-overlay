
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, message-filters, pluginlib, qt5, rclcpp, rcpputils, resource-retriever, rviz-ogre-vendor, rviz-rendering, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, tinyxml2-vendor, urdf, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-rviz-common";
  version = "11.2.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/humble/rviz_common/11.2.13-1.tar.gz";
    name = "11.2.13-1.tar.gz";
    sha256 = "69416abe75da20370a55e02811e9c20621142ad27587ef6644a61f699837f3b7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gmock ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs message-filters pluginlib qt5.qtbase qt5.qtsvg rclcpp rcpputils resource-retriever rviz-ogre-vendor rviz-rendering sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros tinyxml2-vendor urdf yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Common rviz API, used by rviz plugins and applications.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
