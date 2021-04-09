
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-flir-ptu-description";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_ptu-release/archive/release/kinetic/flir_ptu_description/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "4b80e99350b01fc0b4801565b3c3089095c70db5d54df7c4cf0e89d766f69044";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description the FLIR PTUs, currently the D46.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
