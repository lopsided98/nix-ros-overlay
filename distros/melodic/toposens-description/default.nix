
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-toposens-description";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_description/2.0.1-1";
    name = "archive.tar.gz";
    sha256 = "112ed1eba38d1bf762b10543732ab9d935d3186642dd5921e73f6fbb12431483";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D models of the sensor for visualization.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
