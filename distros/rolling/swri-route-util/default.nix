
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, marti-common-msgs, marti-nav-msgs, rclcpp, swri-geometry-util, swri-math-util, swri-transform-util, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-swri-route-util";
  version = "3.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_route_util/3.9.0-2.tar.gz";
    name = "3.9.0-2.tar.gz";
    sha256 = "2e1c9f9cd888d7f9db9e83f55adf948588516f4029151542b81efba99af8b26b";
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
