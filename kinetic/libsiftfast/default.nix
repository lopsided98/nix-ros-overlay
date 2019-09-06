
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, rosboost-cfg, boost, mk, catkin, pythonPackages, subversion, roslib }:
buildRosPackage {
  pname = "ros-kinetic-libsiftfast";
  version = "2.1.13-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/libsiftfast/2.1.13-1.tar.gz";
    name = "2.1.13-1.tar.gz";
    sha256 = "e31b93efbdfe4c1d49ce20ffbb58021ebf48dee14bf35ee6646701a9e96a0191";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.numpy rospack rosboost-cfg boost mk subversion roslib ];
  propagatedBuildInputs = [ pythonPackages.numpy boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library to compute SIFT features'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
