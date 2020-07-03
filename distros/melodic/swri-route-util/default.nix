
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, marti-common-msgs, marti-nav-msgs, roscpp, swri-geometry-util, swri-math-util, swri-transform-util, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-swri-route-util";
  version = "2.13.7-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_route_util/2.13.7-1.tar.gz";
    name = "2.13.7-1.tar.gz";
    sha256 = "041ad9e1fa3e5a4039f8cb36d9d8897df7ea2649031cae9e09fad0e194f3860f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost marti-common-msgs marti-nav-msgs roscpp swri-geometry-util swri-math-util swri-transform-util visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This library provides functionality to simplify working with the
    navigation messages defined in marti_nav_msgs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
