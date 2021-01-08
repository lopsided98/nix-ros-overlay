
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-naoqi-tools";
  version = "0.5.5";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/naoqi_bridge-release/archive/release/kinetic/naoqi_tools/0.5.5-0.tar.gz";
    name = "0.5.5-0.tar.gz";
    sha256 = "0726936c961c62b2a6a27ce93955da72ef18de77e8e56980128e97ed20321139";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Set of tools provided by Aldebaran to convert Aldebaran files (URDF, blender...)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
