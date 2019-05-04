
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, rosconsole, catkin, assimp, urdfdom, urdfdom-headers, collada-parser, urdf, resource-retriever, eigen, geometric-shapes, angles }:
buildRosPackage {
  pname = "ros-kinetic-collada-urdf";
  version = "1.12.12";

  src = fetchurl {
    url = https://github.com/ros-gbp/collada_urdf-release/archive/release/kinetic/collada_urdf/1.12.12-0.tar.gz;
    sha256 = "b76297ab6e963ffec0426f82afef4289d3cb529d4f59e10991ba2662291c8ab4";
  };

  buildInputs = [ cmake-modules rosconsole assimp urdfdom urdfdom-headers collada-parser urdf geometric-shapes angles resource-retriever eigen ];
  propagatedBuildInputs = [ rosconsole assimp urdfdom urdfdom-headers collada-parser urdf geometric-shapes resource-retriever ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a tool to convert Unified Robot Description Format (URDF) documents into COLLAborative Design Activity (COLLADA) documents.

    Implements robot-specific COLLADA extensions as defined by
    http://openrave.programmingvision.com/index.php/Started:COLLADA'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
