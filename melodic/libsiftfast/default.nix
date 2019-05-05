
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, rosboost-cfg, boost, mk, catkin, pythonPackages, subversion, roslib }:
buildRosPackage {
  pname = "ros-melodic-libsiftfast";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/libsiftfast/2.1.11-0.tar.gz;
    sha256 = "ca3a75a0f18b137f41486124251c3fc8319bbe4b7b6b959662f46067dffe6457";
  };

  buildInputs = [ pythonPackages.numpy rospack rosboost-cfg boost mk subversion roslib ];
  propagatedBuildInputs = [ pythonPackages.numpy boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library to compute SIFT features'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
