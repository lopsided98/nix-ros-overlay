
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-pilz-testutils";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/pilz_testutils/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "770c2f3d531838b4280db67a1b5eeeb3d085beeda2e210d6a26ec416333ff370";
  };

  buildType = "catkin";
  buildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains testing utilities used by Pilz packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
