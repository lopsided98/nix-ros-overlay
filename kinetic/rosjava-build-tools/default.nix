
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, openjdk, catkin, ant }:
buildRosPackage {
  pname = "ros-kinetic-rosjava-build-tools";
  version = "0.3.3-r1";

  src = fetchurl {
    url = https://github.com/rosjava-release/rosjava_build_tools-release/archive/release/kinetic/rosjava_build_tools/0.3.3-1.tar.gz;
    sha256 = "782ea027bff0cf3c868b55e77efbc2d28ccc734abe37efed8da31a1f0b587ea1";
  };

  buildInputs = [ openjdk ant ];
  propagatedBuildInputs = [ openjdk catkin ant ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple tools and catkin modules for rosjava development.'';
    #license = lib.licenses.BSD;
  };
}
