
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, tf, catkin, cv-bridge, pkg-config, rostest, eigen, geos, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-swri-geometry-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_geometry_util/2.8.0-0.tar.gz;
    sha256 = "0061823de391c4ced81afd4c8328da8e04aa9f31e71cda39b0170b21388e9e41";
  };

  buildInputs = [ cv-bridge cmake-modules eigen geos tf roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ cv-bridge cmake-modules eigen geos tf roscpp ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''swri_geometry_util'';
    #license = lib.licenses.BSD;
  };
}
