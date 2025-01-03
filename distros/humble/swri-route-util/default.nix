
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, marti-common-msgs, marti-nav-msgs, rclcpp, swri-geometry-util, swri-math-util, swri-roscpp, swri-transform-util, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-swri-route-util";
  version = "3.7.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_route_util/3.7.3-2.tar.gz";
    name = "3.7.3-2.tar.gz";
    sha256 = "3047d90b34e2e6d274491395b0cd618434bbb3ad9d8b92cf18aab374a75ddf98";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost marti-common-msgs marti-nav-msgs rclcpp swri-geometry-util swri-math-util swri-roscpp swri-transform-util tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This library provides functionality to simplify working with the
    navigation messages defined in marti_nav_msgs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
