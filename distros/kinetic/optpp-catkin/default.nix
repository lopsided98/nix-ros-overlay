
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoconf, catkin, gfortran, git }:
buildRosPackage {
  pname = "ros-kinetic-optpp-catkin";
  version = "2.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/optpp_catkin-release/archive/release/kinetic/optpp_catkin/2.4.0-3.tar.gz";
    name = "2.4.0-3.tar.gz";
    sha256 = "9af2eb6cb36367547f1ef5a9ae0f9a18ea0b8035a72930fa667bb5b616ac2a9e";
  };

  buildType = "catkin";
  buildInputs = [ autoconf gfortran git ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The OPT++ catkin wrapper package'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
