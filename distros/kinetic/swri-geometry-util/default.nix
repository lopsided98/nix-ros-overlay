
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cv-bridge, eigen, geos, pkg-config, roscpp, rostest, tf }:
buildRosPackage {
  pname = "ros-kinetic-swri-geometry-util";
  version = "2.13.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_geometry_util/2.13.1-1.tar.gz";
    name = "2.13.1-1.tar.gz";
    sha256 = "d3d40803902bc1e53673fdc57e1ab1de04442e26169005d41bff5630cde963fc";
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
