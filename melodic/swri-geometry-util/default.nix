
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, tf, catkin, eigen, cv-bridge, roscpp, pkg-config, geos, rostest }:
buildRosPackage {
  pname = "ros-melodic-swri-geometry-util";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_geometry_util/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "b72f5c859b83556f819d89d58615dcc68baeda9a0238fd21078882cb547b83d7";
  };

  buildType = "catkin";
  buildInputs = [ tf cmake-modules eigen cv-bridge roscpp geos ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ tf cmake-modules eigen cv-bridge roscpp geos ];
  nativeBuildInputs = [ pkg-config catkin ];

  meta = {
    description = ''swri_geometry_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
