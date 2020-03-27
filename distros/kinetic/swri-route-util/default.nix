
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, marti-common-msgs, marti-nav-msgs, roscpp, swri-geometry-util, swri-math-util, swri-transform-util, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-swri-route-util";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_route_util/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "7ba7a611571f0fed84a83f86831907b935e32112da34346c01e800b5485a96e1";
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
