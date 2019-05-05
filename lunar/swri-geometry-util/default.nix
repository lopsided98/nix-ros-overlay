
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, tf, catkin, cv-bridge, pkg-config, rostest, eigen, geos, roscpp }:
buildRosPackage {
  pname = "ros-lunar-swri-geometry-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/lunar/swri_geometry_util/2.8.0-0.tar.gz;
    sha256 = "f19bfa3e1d4b6b8dbf7fb9a7644302868c44710f862c6af1b11074f1ec68a64b";
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
