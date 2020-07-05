
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pilz-utils, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-testutils";
  version = "0.5.18-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_testutils/0.5.18-1.tar.gz";
    name = "0.5.18-1.tar.gz";
    sha256 = "f5c57a0a5a0800479c883458432415e6dc84a128f3b2451c390d757be3b9582a";
  };

  buildType = "catkin";
  buildInputs = [ pilz-utils roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains testing utilities used by Pilz packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
