
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, catkin, marti-nav-msgs, marti-common-msgs, visualization-msgs, swri-geometry-util, roscpp, swri-transform-util }:
buildRosPackage {
  pname = "ros-melodic-swri-route-util";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_route_util/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "3b44ab4f608f5f77652c0689f2bac71f419b721a6520da2a8ffd566603f16aa8";
  };

  buildType = "catkin";
  buildInputs = [ swri-math-util roscpp marti-nav-msgs marti-common-msgs swri-geometry-util visualization-msgs swri-transform-util ];
  propagatedBuildInputs = [ swri-math-util roscpp marti-nav-msgs marti-common-msgs swri-geometry-util visualization-msgs swri-transform-util ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This library provides functionality to simplify working with the
    navigation messages defined in marti_nav_msgs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
