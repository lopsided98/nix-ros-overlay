
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, rospack, rosboost-cfg, pythonPackages, roslib, catkin, subversion, mk }:
buildRosPackage {
  pname = "ros-melodic-libsiftfast";
  version = "2.1.13-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/libsiftfast/2.1.13-1.tar.gz";
    name = "2.1.13-1.tar.gz";
    sha256 = "34837d3b7a8f0e8255669ca198c652f9c0b3e7363feba149f8c1a60a105819cc";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.numpy boost rosboost-cfg roslib subversion mk rospack ];
  propagatedBuildInputs = [ pythonPackages.numpy boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library to compute SIFT features'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
