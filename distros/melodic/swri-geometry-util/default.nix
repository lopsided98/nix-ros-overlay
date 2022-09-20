
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cv-bridge, eigen, geos, pkg-config, roscpp, rostest, tf }:
buildRosPackage {
  pname = "ros-melodic-swri-geometry-util";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_geometry_util/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "597ad7151017fe1361d37eb5db999d87e77870f864708cc1fa698c9afe944871";
  };

  buildType = "catkin";
  buildInputs = [ catkin pkg-config ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ cmake-modules cv-bridge eigen geos roscpp tf ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''swri_geometry_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
