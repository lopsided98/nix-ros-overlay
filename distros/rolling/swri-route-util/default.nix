
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, marti-common-msgs, marti-nav-msgs, rclcpp, swri-geometry-util, swri-math-util, swri-transform-util, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-swri-route-util";
  version = "3.8.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_route_util/3.8.7-1.tar.gz";
    name = "3.8.7-1.tar.gz";
    sha256 = "5be030dc8e37ce35434c9fc22cf38fa54eea9ea4dfcef65fc6400ca234bfc27e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs marti-common-msgs marti-nav-msgs rclcpp swri-geometry-util swri-math-util swri-transform-util tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This library provides functionality to simplify working with the
    navigation messages defined in marti_nav_msgs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
