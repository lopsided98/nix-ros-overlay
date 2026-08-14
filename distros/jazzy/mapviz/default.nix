
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, image-transport, libxi, libxmu, mapviz-interfaces, opencv, pkg-config, pluginlib, qt5or6, rclcpp, rqt-gui, rqt-gui-cpp, std-srvs, swri-math-util, swri-transform-util, tf2, tf2-geometry-msgs, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-mapviz";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/jazzy/mapviz/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "8301201e2bf734c7dddbb54f1d363063ee26fae208575d3f922a91133d0f6e19";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  propagatedBuildInputs = [ geometry-msgs image-transport libxi libxmu mapviz-interfaces opencv opencv.cxxdev pluginlib qt5or6.qtbase rclcpp rqt-gui rqt-gui-cpp std-srvs swri-math-util swri-transform-util tf2 tf2-geometry-msgs tf2-ros yaml-cpp ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "2D mapping display with extensible data overlays";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
