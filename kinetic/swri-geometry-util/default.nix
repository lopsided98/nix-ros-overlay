
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, tf, catkin, eigen, cv-bridge, roscpp, pkg-config, geos, rostest }:
buildRosPackage {
  pname = "ros-kinetic-swri-geometry-util";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_geometry_util/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "f2c2cda1ed7a876560f8808ecbcf0703f39b8eadb733ecfdf4fd6d734ab8bdca";
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
