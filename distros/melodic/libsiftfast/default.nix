
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, mk, pythonPackages, rosboost-cfg, roslib, rospack, subversion }:
buildRosPackage {
  pname = "ros-melodic-libsiftfast";
  version = "2.1.23-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/libsiftfast/2.1.23-1.tar.gz";
    name = "2.1.23-1.tar.gz";
    sha256 = "10a93f313edcba25f77830470cb771c60d9777a10ac9952d26659f4187a30346";
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
