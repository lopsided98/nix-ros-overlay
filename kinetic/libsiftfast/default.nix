
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, rosboost-cfg, boost, mk, catkin, pythonPackages, subversion, roslib }:
buildRosPackage {
  pname = "ros-kinetic-libsiftfast";
  version = "2.1.12-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/libsiftfast/2.1.12-1.tar.gz;
    sha256 = "0cb6cc1a11bb5d8a4635df3f56eecee6b0f4ac2b3ad2f9e4546fbd6068b78e66";
  };

  buildInputs = [ pythonPackages.numpy rospack rosboost-cfg boost mk subversion roslib ];
  propagatedBuildInputs = [ pythonPackages.numpy boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library to compute SIFT features'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
