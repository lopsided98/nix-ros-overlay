
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dpkg }:
buildRosPackage {
  pname = "ros-kinetic-libntcan";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/kinetic/libntcan/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "597a0fdeea57a0893317523807c28e131f92653c120ae97cb5c002e0833b91ad";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dpkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libntcan to use it as a ros dependency.'';
    license = with lib.licenses; [ "proprietary" ];
  };
}
