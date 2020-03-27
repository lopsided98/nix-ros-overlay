
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, marti-common-msgs, marti-nav-msgs, roscpp, swri-geometry-util, swri-math-util, swri-transform-util, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-swri-route-util";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_route_util/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "800782d12afc9e2c2cf8f4a2450a30f1f1dacfadbcb13496b3af7ee107fab429";
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
