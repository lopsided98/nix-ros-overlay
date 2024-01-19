
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, assimp, catkin, cmake-modules, collada-dom, collada-parser, eigen, geometric-shapes, resource-retriever, rosconsole, urdf, urdfdom, urdfdom-headers }:
buildRosPackage {
  pname = "ros-noetic-collada-urdf";
  version = "1.12.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/collada_urdf-release/archive/release/noetic/collada_urdf/1.12.13-1.tar.gz";
    name = "1.12.13-1.tar.gz";
    sha256 = "779ef6779c062cc025f262cc360e4a5ece09203a3bc30e4d754a22148dfdd265";
  };

  buildType = "catkin";
  buildInputs = [ angles catkin cmake-modules eigen ];
  propagatedBuildInputs = [ assimp collada-dom collada-parser geometric-shapes resource-retriever rosconsole urdf urdfdom urdfdom-headers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a tool to convert Unified Robot Description Format (URDF) documents into COLLAborative Design Activity (COLLADA) documents.

    Implements robot-specific COLLADA extensions as defined by
    http://openrave.programmingvision.com/index.php/Started:COLLADA'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
