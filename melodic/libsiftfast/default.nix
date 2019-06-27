
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, rosboost-cfg, boost, mk, catkin, pythonPackages, subversion, roslib }:
buildRosPackage {
  pname = "ros-melodic-libsiftfast";
  version = "2.1.12-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/libsiftfast/2.1.12-2.tar.gz;
    sha256 = "ba74af41bea5e114a440d898d100f7b08a7f5b44010fc8c9e31142fd5b0f2ab6";
  };

  buildInputs = [ pythonPackages.numpy rospack rosboost-cfg boost mk subversion roslib ];
  propagatedBuildInputs = [ pythonPackages.numpy boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library to compute SIFT features'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
