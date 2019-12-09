
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, swri-geometry-util, marti-nav-msgs, catkin, marti-common-msgs, visualization-msgs, roscpp, swri-transform-util }:
buildRosPackage {
  pname = "ros-melodic-swri-route-util";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_route_util/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "7215500753a4286e5c67aa92fc81c1fb7566bb4e9b9b642849cdd53a9a7c7568";
  };

  buildType = "catkin";
  buildInputs = [ swri-math-util swri-geometry-util marti-nav-msgs roscpp marti-common-msgs visualization-msgs swri-transform-util ];
  propagatedBuildInputs = [ swri-math-util swri-geometry-util marti-nav-msgs marti-common-msgs visualization-msgs roscpp swri-transform-util ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This library provides functionality to simplify working with the
    navigation messages defined in marti_nav_msgs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
