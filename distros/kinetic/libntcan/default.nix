
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dpkg }:
buildRosPackage {
  pname = "ros-kinetic-libntcan";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/kinetic/libntcan/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "b6fb1d92265d70a55c1967371ff53576360ee096327efece14d21b347e53d10e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dpkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libntcan to use it as a ros dependency.'';
    license = with lib.licenses; [ "proprietary" ];
  };
}
