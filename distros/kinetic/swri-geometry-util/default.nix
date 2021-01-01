
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cv-bridge, eigen, geos, pkg-config, roscpp, rostest, tf }:
buildRosPackage {
  pname = "ros-kinetic-swri-geometry-util";
  version = "2.14.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_geometry_util/2.14.2-1.tar.gz";
    name = "2.14.2-1.tar.gz";
    sha256 = "8d5cbe65e6eb226fe72ebb2945bada6681913bbcab060afee848759524925ea4";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ cmake-modules cv-bridge eigen geos roscpp tf ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''swri_geometry_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
