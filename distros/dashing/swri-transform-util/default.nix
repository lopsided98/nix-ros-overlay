
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, boost, cv-bridge, diagnostic-msgs, geographic-msgs, geometry-msgs, geos, gps-msgs, libyamlcpp, marti-nav-msgs, pkg-config, proj, python3Packages, rcl-interfaces, rclcpp, rclcpp-components, rclpy, sensor-msgs, swri-math-util, swri-roscpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-dashing-swri-transform-util";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_transform_util/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "735ca1d51dbd142ff5451762b191817238347e983187691a56406dc5f149212e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost cv-bridge diagnostic-msgs geographic-msgs geometry-msgs geos gps-msgs libyamlcpp marti-nav-msgs proj python3Packages.numpy rcl-interfaces rclcpp rclcpp-components rclpy sensor-msgs swri-math-util swri-roscpp tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python pkg-config ];

  meta = {
    description = ''The swri_transform_util package contains utility functions and classes for
     transforming between coordinate frames.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
