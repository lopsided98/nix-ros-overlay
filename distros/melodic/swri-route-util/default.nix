
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, marti-common-msgs, marti-nav-msgs, roscpp, swri-geometry-util, swri-math-util, swri-transform-util, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-swri-route-util";
  version = "2.13.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_route_util/2.13.1-1.tar.gz";
    name = "2.13.1-1.tar.gz";
    sha256 = "2f3c6379b1ffd2c824eedf2afaeaca2c1a8b14984e5bcc31f6ad3fc43e87d8f7";
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
