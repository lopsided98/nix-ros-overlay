
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-flir-ptu-description";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_ptu-release/archive/release/melodic/flir_ptu_description/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "8a409939df64d81d27f91a39022a960593311dd28ec247c24e888c143afe449a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description the FLIR PTUs, currently the D46.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
