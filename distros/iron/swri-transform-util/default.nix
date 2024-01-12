
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, boost, cv-bridge, diagnostic-msgs, diagnostic-updater, geographic-msgs, geometry-msgs, geos, gps-msgs, marti-nav-msgs, pkg-config, proj, python3Packages, rcl-interfaces, rclcpp, rclcpp-components, rclpy, sensor-msgs, swri-math-util, swri-roscpp, tf2, tf2-geometry-msgs, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-iron-swri-transform-util";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/iron/swri_transform_util/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "d064c6db5d44565df356fa1c16d3c036d4ee651ec91217519ca8edd7454a5fc8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python pkg-config ];
  propagatedBuildInputs = [ boost cv-bridge diagnostic-msgs diagnostic-updater geographic-msgs geometry-msgs geos gps-msgs marti-nav-msgs proj python3Packages.numpy rcl-interfaces rclcpp rclcpp-components rclpy sensor-msgs swri-math-util swri-roscpp tf2 tf2-geometry-msgs tf2-ros yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python pkg-config ];

  meta = {
    description = ''The swri_transform_util package contains utility functions and classes for
     transforming between coordinate frames.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
