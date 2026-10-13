
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-copyright, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-pep257, ament-xmllint, nav-msgs, navmap-core, navmap-ros, navmap-ros-interfaces, pcl-conversions, python3Packages, rclcpp, rclpy, sensor-msgs, sensor-msgs-py, tf2-ros-py }:
buildRosPackage {
  pname = "ros-humble-navmap-tools";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/humble/navmap_tools/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "b84782daefd96c288086a86db29667bfcdc1a0ff54596f8eacaf1d7c0495c2ed";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-copyright ament-flake8 ament-lint-auto ament-lint-common ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python nav-msgs navmap-core navmap-ros navmap-ros-interfaces pcl-conversions python3Packages.numpy python3Packages.pillow python3Packages.platformdirs python3Packages.pyproj python3Packages.requests rclcpp rclpy sensor-msgs sensor-msgs-py tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Tools and utilities for building and testing NavMaps: a GIS-to-NavMap/Gazebo
    generator (given a GPS center and a size in meters), a PointCloud-to-NavMap
    mesh builder, and a NavMap file publisher for RViz2.";
    license = with lib.licenses; [ asl20 ];
  };
}
