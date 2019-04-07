
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, rosboost-cfg, boost, mk, catkin, pythonPackages, subversion, roslib }:
buildRosPackage {
  pname = "ros-kinetic-libsiftfast";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/libsiftfast/2.1.11-0.tar.gz;
    sha256 = "f7e4e7196096f13772238463518d20e3718c0eb3991bfbba3658714262fe1c09";
  };

  buildInputs = [ rospack pythonPackages.numpy rosboost-cfg boost mk roslib subversion ];
  propagatedBuildInputs = [ pythonPackages.numpy boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library to compute SIFT features'';
    #license = lib.licenses.LGPL;
  };
}
