
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, rospack, rosboost-cfg, pythonPackages, roslib, catkin, subversion, mk }:
buildRosPackage {
  pname = "ros-kinetic-libsiftfast";
  version = "2.1.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/libsiftfast/2.1.14-1.tar.gz";
    name = "2.1.14-1.tar.gz";
    sha256 = "edc3538c35c0ea357405807b40006c6afc9df91530ccc3ace0ef192664ba49f9";
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
