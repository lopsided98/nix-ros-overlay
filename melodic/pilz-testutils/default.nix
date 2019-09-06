
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clang, roscpp }:
buildRosPackage {
  pname = "ros-melodic-pilz-testutils";
  version = "0.5.7-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_testutils/0.5.7-1.tar.gz";
    name = "0.5.7-1.tar.gz";
    sha256 = "f1abb291a91b7be68b02737c099de6883ee8be97908219564453f621217a3538";
  };

  buildType = "catkin";
  buildInputs = [ roscpp clang ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains testing utilities used by Pilz packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
