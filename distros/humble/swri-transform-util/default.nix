
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-index-cpp, cv-bridge, diagnostic-msgs, diagnostic-updater, geographic-msgs, geographiclib, geometry-msgs, geos, gps-msgs, launch-ros, launch-testing, launch-testing-ament-cmake, marti-nav-msgs, opencv, pkg-config, proj, python3Packages, rcl-interfaces, rclcpp, rclcpp-components, rclpy, sensor-msgs, swri-math-util, tf2, tf2-geometry-msgs, tf2-ros, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-swri-transform-util";
  version = "3.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_transform_util/3.11.0-1.tar.gz";
    name = "3.11.0-1.tar.gz";
    sha256 = "c51b7918724d806196ad40c1fab1daeef288df289cbee79038c83bc13dde5fbf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python pkg-config ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-index-cpp launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ cv-bridge diagnostic-msgs diagnostic-updater geographic-msgs geographiclib geometry-msgs geos gps-msgs marti-nav-msgs opencv opencv.cxxdev proj python3Packages.numpy python3Packages.pyyaml rcl-interfaces rclcpp rclcpp-components rclpy sensor-msgs swri-math-util tf2 tf2-geometry-msgs tf2-ros yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python pkg-config ];

  meta = {
    description = "The swri_transform_util package contains utility functions and classes for
     transforming between coordinate frames.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
