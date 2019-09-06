
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, tf, catkin, cv-bridge, pkg-config, rostest, eigen, geos, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-swri-geometry-util";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_geometry_util/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "f1e16f5a7bec3397b0436dea4cd8174ed678b8ffdfb73cbdb1851cadd926370e";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules cv-bridge roscpp eigen geos tf ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ cmake-modules tf cv-bridge eigen geos roscpp ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''swri_geometry_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
