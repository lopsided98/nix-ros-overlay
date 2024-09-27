
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, ament-index-cpp, boost, cv-bridge, diagnostic-msgs, diagnostic-updater, geographic-msgs, geographiclib, geometry-msgs, geos, gps-msgs, launch-ros, launch-testing, launch-testing-ament-cmake, marti-nav-msgs, pkg-config, proj, python3Packages, rcl-interfaces, rclcpp, rclcpp-components, rclpy, sensor-msgs, swri-math-util, swri-roscpp, tf2, tf2-geometry-msgs, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-iron-swri-transform-util";
  version = "3.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/iron/swri_transform_util/3.7.3-1.tar.gz";
    name = "3.7.3-1.tar.gz";
    sha256 = "f377e2f7313e7b7e4d4580e2b92da041ff5563baeeaccb582c1e07a954521c00";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python pkg-config ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ boost cv-bridge diagnostic-msgs diagnostic-updater geographic-msgs geographiclib geometry-msgs geos gps-msgs marti-nav-msgs proj python3Packages.numpy python3Packages.pyyaml rcl-interfaces rclcpp rclcpp-components rclpy sensor-msgs swri-math-util swri-roscpp tf2 tf2-geometry-msgs tf2-ros yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python pkg-config ];

  meta = {
    description = "The swri_transform_util package contains utility functions and classes for
     transforming between coordinate frames.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
