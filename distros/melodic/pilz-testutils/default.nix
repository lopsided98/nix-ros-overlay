
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pilz-utils, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-testutils";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_common-release/archive/release/melodic/pilz_testutils/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "852c503a5de03f9fd4985710ea0b0526d89baa6dea09e0c967cdeea783372005";
  };

  buildType = "catkin";
  buildInputs = [ catkin pilz-utils roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains testing utilities used by Pilz packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
