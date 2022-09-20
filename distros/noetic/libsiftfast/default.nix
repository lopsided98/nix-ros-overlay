
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, mk, python3Packages, rosboost-cfg, roslib, rospack, subversion }:
buildRosPackage {
  pname = "ros-noetic-libsiftfast";
  version = "2.1.21-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/libsiftfast/2.1.21-2.tar.gz";
    name = "2.1.21-2.tar.gz";
    sha256 = "4069ebf700d60562e1e8b991a20930b26faaea96b74d5723c65cead215c7b445";
  };

  buildType = "catkin";
  buildInputs = [ catkin mk rosboost-cfg roslib rospack subversion ];
  propagatedBuildInputs = [ boost python3Packages.numpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library to compute SIFT features'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
