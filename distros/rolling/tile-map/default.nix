
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, jsoncpp, mapviz, pluginlib, qt5or6, rclcpp, rqt-gui-cpp, swri-math-util, swri-transform-util, tf2, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-tile-map";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/rolling/tile_map/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "187994451cbe1a1ba41c5dd9f23dff14d7fe675d020b67ebc162ae4f638a82d1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rqt-gui-cpp ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ jsoncpp mapviz pluginlib qt5or6.qtbase rclcpp swri-math-util swri-transform-util tf2 yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Tile map provides a slippy map style interface for visualizing
     OpenStreetMap and GoogleMap tiles.  A mapviz visualization plug-in is also
     implemented";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
