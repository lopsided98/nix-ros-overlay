
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-libdlib";
  version = "0.6.13-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_extern-release/archive/release/melodic/libdlib/0.6.13-1.tar.gz;
    sha256 = "772c8b82fede51aea078f7d3a320dc76d73e9c877479d5715edaf67153886383";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the external c++ library dlib (http://dlib.net/) in a ROS package, so other packages can use it. The code was obtained from https://github.com/davisking/dlib . For further descriptions and tutorials see the Makefile.tarball and http://dlib.net/ .'';
    license = with lib.licenses; [ boost ];
  };
}
