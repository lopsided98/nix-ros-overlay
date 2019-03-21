
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-hsr-meshes";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/ToyotaResearchInstitute/hsr_meshes-release/archive/release/kinetic/hsr_meshes/1.1.0-0.tar.gz;
    sha256 = "1a60d5b55da3a1c9fe719069bb83116a7670362ceca181223313d7709a742aee";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D mesh files for the Toyota HSR'';
    #license = lib.licenses.Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International Public License;
  };
}
