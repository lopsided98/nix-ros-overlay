
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, boost, cv-bridge, diagnostic-msgs, geographic-msgs, geometry-msgs, geos, gps-msgs, launch-xml, libyamlcpp, marti-nav-msgs, pkg-config, proj, rcl-interfaces, rclcpp, rclcpp-components, rclpy, sensor-msgs, swri-math-util, swri-roscpp, tf2, tf2-geometry-msgs, tf2-py, tf2-ros }:
buildRosPackage {
  pname = "ros-eloquent-swri-transform-util";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/eloquent/swri_transform_util/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "9457b0999db00b89eac86ff31a2e002d6dbbaec9e66a8053863369a45bcfe6b9";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost cv-bridge diagnostic-msgs geographic-msgs geometry-msgs geos gps-msgs launch-xml libyamlcpp marti-nav-msgs proj rcl-interfaces rclcpp rclcpp-components rclpy sensor-msgs swri-math-util swri-roscpp tf2 tf2-geometry-msgs tf2-py tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python pkg-config ];

  meta = {
    description = ''The swri_transform_util package contains utility functions and classes for
     transforming between coordinate frames.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
