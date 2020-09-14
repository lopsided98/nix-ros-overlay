
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pilz-utils, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-testutils";
  version = "0.5.19-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_testutils/0.5.19-1.tar.gz";
    name = "0.5.19-1.tar.gz";
    sha256 = "29404e94124147f8eea7a06a014195317a9ab2aa663f126d848f0777c9488fc5";
  };

  buildType = "catkin";
  buildInputs = [ pilz-utils roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains testing utilities used by Pilz packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
