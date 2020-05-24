
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, marti-common-msgs, marti-nav-msgs, roscpp, swri-geometry-util, swri-math-util, swri-transform-util, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-swri-route-util";
  version = "2.13.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_route_util/2.13.1-1.tar.gz";
    name = "2.13.1-1.tar.gz";
    sha256 = "a8b453104db0c1822813eaf4c65355c8f6eef1149966e247d616b6f7787e6a0f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ marti-common-msgs marti-nav-msgs roscpp swri-geometry-util swri-math-util swri-transform-util visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This library provides functionality to simplify working with the
    navigation messages defined in marti_nav_msgs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
