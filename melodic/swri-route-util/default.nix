
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, catkin, marti-nav-msgs, marti-common-msgs, visualization-msgs, swri-geometry-util, roscpp, swri-transform-util }:
buildRosPackage {
  pname = "ros-melodic-swri-route-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_route_util/2.8.0-0.tar.gz;
    sha256 = "abb33dfe7604804a00e7a03fc1b8460067b3302851e54df037dfcbe1ab0fbe04";
  };

  buildInputs = [ swri-math-util marti-common-msgs visualization-msgs swri-geometry-util marti-nav-msgs roscpp swri-transform-util ];
  propagatedBuildInputs = [ swri-math-util marti-common-msgs visualization-msgs swri-geometry-util marti-nav-msgs roscpp swri-transform-util ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This library provides functionality to simplify working with the
    navigation messages defined in marti_nav_msgs.'';
    #license = lib.licenses.BSD;
  };
}
