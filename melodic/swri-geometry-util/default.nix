
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, tf, catkin, cv-bridge, pkg-config, rostest, eigen, geos, roscpp }:
buildRosPackage {
  pname = "ros-melodic-swri-geometry-util";
  version = "2.9.0-r1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_geometry_util/2.9.0-1.tar.gz;
    sha256 = "435db7796635dfc1e7aefd7d0ec0ee8aa3f91242d4c58228bc2d474c911f23af";
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
