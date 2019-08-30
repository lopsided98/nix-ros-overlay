
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-opengm";
  version = "0.6.13-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_extern-release/archive/release/kinetic/opengm/0.6.13-1.tar.gz;
    sha256 = "fe0dea2b0d0b4f7a61620d07e93aabc493ebfe9361a217432f696f5c591790e5";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the external c++ library opengm in a ROS package, so other packages can use it. It downloads the source code of it and then unzips it. The library is a header-only library with command line interfaces, which aren't used, so it doesn't gets build. For further descriptions and tutorials see the Makefile.tarball and https://github.com/opengm/opengm .
		Copyright (C) 2013 Bjoern Andres, Thorsten Beier and Joerg H.~Kappes.'';
    license = with lib.licenses; [ mit ];
  };
}
