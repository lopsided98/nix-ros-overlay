
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, mk, pythonPackages, rosboost-cfg, roslib, rospack, subversion }:
buildRosPackage {
  pname = "ros-melodic-libsiftfast";
  version = "2.1.24-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/libsiftfast/2.1.24-1.tar.gz";
    name = "2.1.24-1.tar.gz";
    sha256 = "87761a5a4f4feb68f17e309768ff3868e1b3f2a24f06885671321a289406bbaa";
  };

  buildType = "catkin";
  buildInputs = [ mk rosboost-cfg roslib rospack subversion ];
  propagatedBuildInputs = [ boost pythonPackages.numpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library to compute SIFT features'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
