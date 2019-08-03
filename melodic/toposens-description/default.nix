
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-toposens-description";
  version = "1.2.2-r1";

  src = fetchurl {
    url = https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_description/1.2.2-1;
    sha256 = "8bc00f23515a4b37835a2c0497acb8fa57cb43389ce589ed8aa869c0e700d3f5";
  };

  buildInputs = [ urdf xacro ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D models of the sensor for visualization.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
