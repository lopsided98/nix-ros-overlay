
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-toposens-description";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_description/1.2.3-1";
    name = "archive.tar.gz";
    sha256 = "428d5b204e78afd88f05430269cb39f12adca809e2345931a875de56e0d8beb0";
  };

  buildType = "catkin";
  buildInputs = [ urdf xacro ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D models of the sensor for visualization.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
