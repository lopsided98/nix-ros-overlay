
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-opengm";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/ipa320/cob_extern-release/archive/release/kinetic/opengm/0.6.12-0.tar.gz;
    sha256 = "fc71d18229ca0507e276772e2df2da04bad241712bfdcf972f069935e115bcfb";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the external c++ library opengm in a ROS package, so other packages can use it. It downloads the source code of it and then unzips it. The library is a header-only library with command line interfaces, which aren't used, so it doesn't gets build. For further descriptions and tutorials see the Makefile.tarball and https://github.com/opengm/opengm .
		Copyright (C) 2013 Bjoern Andres, Thorsten Beier and Joerg H.~Kappes.'';
    license = with lib.licenses; [ mit ];
  };
}
