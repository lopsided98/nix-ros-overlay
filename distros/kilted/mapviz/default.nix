
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, image-transport, libxi, libxmu, mapviz-interfaces, opencv, pkg-config, pluginlib, qt5or6, rclcpp, rqt-gui, rqt-gui-cpp, std-srvs, swri-math-util, swri-transform-util, tf2, tf2-geometry-msgs, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-kilted-mapviz";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/kilted/mapviz/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "43da9f37faa05173a111cae6ea18581c7d2ecc8c7c6d8a37341dce96e7956bfb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs image-transport libxi libxmu mapviz-interfaces opencv opencv.cxxdev pkg-config pluginlib qt5or6.qtbase rclcpp rqt-gui rqt-gui-cpp std-srvs swri-math-util swri-transform-util tf2 tf2-geometry-msgs tf2-ros yaml-cpp ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "2D mapping display with extensible data overlays";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
