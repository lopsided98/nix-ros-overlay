
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, tf, catkin, cv-bridge, pkg-config, rostest, eigen, geos, roscpp }:
buildRosPackage {
  pname = "ros-melodic-swri-geometry-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_geometry_util/2.8.0-0.tar.gz;
    sha256 = "a09570175b7e2453a78c973b2cdc11f93dacc5e0f2f33c7afa80dff66b05162d";
  };

  buildInputs = [ cmake-modules cv-bridge roscpp eigen geos tf ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ cmake-modules cv-bridge roscpp eigen geos tf ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''swri_geometry_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
