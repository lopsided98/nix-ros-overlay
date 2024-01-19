
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-pincher-arm-description";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/pincher_arm-release/archive/release/noetic/pincher_arm_description/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "6a65b4212527b1e82f01a2746eaf19d96578c173cf214263b6d3ceca58876989";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF Description package for PhantomX Pincher arm'';
    license = with lib.licenses; [ bsdOriginal cc-by-nc-sa-40 ];
  };
}
