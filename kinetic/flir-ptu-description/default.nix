
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-flir-ptu-description";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/flir_ptu-release/archive/release/kinetic/flir_ptu_description/0.2.0-0.tar.gz;
    sha256 = "90fccd005996b59742619f65837a44fcc94b4c1e76bafb7762ea076606ff50bf";
  };

  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin xacro ];

  meta = {
    description = ''URDF description the FLIR PTUs, currently the D46.'';
    #license = lib.licenses.BSD;
  };
}
