
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, swri-math-util, swri-geometry-util, marti-nav-msgs, ament-cmake, marti-common-msgs, visualization-msgs, swri-transform-util, rclcpp, swri-roscpp }:
buildRosPackage {
  pname = "ros-dashing-swri-route-util";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_route_util/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "5054602c23b534b0401d7f65d0fa1d535b58b91f25fbcc2fe539a21a16f3adae";
  };

  buildType = "ament_cmake";
  buildInputs = [ boost swri-math-util swri-geometry-util marti-nav-msgs marti-common-msgs visualization-msgs swri-transform-util rclcpp swri-roscpp ];
  propagatedBuildInputs = [ boost swri-math-util swri-geometry-util marti-nav-msgs marti-common-msgs visualization-msgs swri-transform-util rclcpp swri-roscpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This library provides functionality to simplify working with the
    navigation messages defined in marti_nav_msgs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
