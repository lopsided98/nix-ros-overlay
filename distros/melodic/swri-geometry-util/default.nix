
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cv-bridge, eigen, geos, pkg-config, roscpp, rostest, tf }:
buildRosPackage {
  pname = "ros-melodic-swri-geometry-util";
  version = "2.13.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_geometry_util/2.13.1-1.tar.gz";
    name = "2.13.1-1.tar.gz";
    sha256 = "97c5919b9ea035123bdd8417476d16e7b7e4ae1295a934b83dbe7e1dcb3d9325";
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
