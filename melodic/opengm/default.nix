
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-opengm";
  version = "0.6.13-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/melodic/opengm/0.6.13-1.tar.gz";
    name = "0.6.13-1.tar.gz";
    sha256 = "7b9e563e9e8a6e4fa34312e628738e9ea103d3d67bede0cab87a86deaee6d5c9";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the external c++ library opengm in a ROS package, so other packages can use it. It downloads the source code of it and then unzips it. The library is a header-only library with command line interfaces, which aren't used, so it doesn't gets build. For further descriptions and tutorials see the Makefile.tarball and https://github.com/opengm/opengm .
		Copyright (C) 2013 Bjoern Andres, Thorsten Beier and Joerg H.~Kappes.'';
    license = with lib.licenses; [ mit ];
  };
}
