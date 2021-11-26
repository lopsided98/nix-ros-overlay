
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, boost, cv-bridge, diagnostic-msgs, geographic-msgs, geometry-msgs, geos, gps-msgs, launch-xml, libyamlcpp, marti-nav-msgs, pkg-config, proj, python3Packages, rcl-interfaces, rclcpp, rclcpp-components, rclpy, sensor-msgs, swri-math-util, swri-roscpp, tf2, tf2-geometry-msgs, tf2-py, tf2-ros }:
buildRosPackage {
  pname = "ros-galactic-swri-transform-util";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/galactic/swri_transform_util/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "7d98f6a960869476f2e7fc0f3e3736e6884208fbd00c00a7104510c44e572fb0";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost cv-bridge diagnostic-msgs geographic-msgs geometry-msgs geos gps-msgs launch-xml libyamlcpp marti-nav-msgs proj python3Packages.numpy rcl-interfaces rclcpp rclcpp-components rclpy sensor-msgs swri-math-util swri-roscpp tf2 tf2-geometry-msgs tf2-py tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python pkg-config ];

  meta = {
    description = ''The swri_transform_util package contains utility functions and classes for
     transforming between coordinate frames.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
