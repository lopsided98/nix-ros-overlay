
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, message-filters, pluginlib, qt5or6, rclcpp, resource-retriever, rviz-ogre-vendor, rviz-rendering, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, tinyxml-2, urdf, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-rviz-common";
  version = "15.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/lyrical/rviz_common/15.2.6-1.tar.gz";
    name = "15.2.6-1.tar.gz";
    sha256 = "1dfdb5e7611c2ef03fd8de132a61c4f4f02716c908b17af23a88d6512967efcf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs message-filters pluginlib qt5or6.qtbase qt5or6.qtsvg rclcpp resource-retriever rviz-ogre-vendor rviz-rendering sensor-msgs std-msgs std-srvs tf2 tf2-ros tinyxml-2 urdf yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Common rviz API, used by rviz plugins and applications.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
