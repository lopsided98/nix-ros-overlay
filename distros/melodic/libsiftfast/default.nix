
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, mk, pythonPackages, rosboost-cfg, roslib, rospack, subversion }:
buildRosPackage {
  pname = "ros-melodic-libsiftfast";
  version = "2.1.21-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/libsiftfast/2.1.21-3.tar.gz";
    name = "2.1.21-3.tar.gz";
    sha256 = "0772c84e89ec4ee8e4ddac0e42ee1543b586dc12e5ec8b98e69876999f0d329e";
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
