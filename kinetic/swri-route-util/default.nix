
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, catkin, marti-nav-msgs, marti-common-msgs, visualization-msgs, swri-geometry-util, roscpp, swri-transform-util }:
buildRosPackage {
  pname = "ros-kinetic-swri-route-util";
  version = "2.9.0-r1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_route_util/2.9.0-1.tar.gz;
    sha256 = "9ac13e150e1e5af43257713b44024ebe42a461e96c33bd6c00b8a5491809007b";
  };

  buildInputs = [ swri-math-util roscpp marti-nav-msgs marti-common-msgs swri-geometry-util visualization-msgs swri-transform-util ];
  propagatedBuildInputs = [ swri-math-util roscpp marti-nav-msgs marti-common-msgs swri-geometry-util visualization-msgs swri-transform-util ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This library provides functionality to simplify working with the
    navigation messages defined in marti_nav_msgs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
