
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-pilz-testutils";
  version = "0.5.14-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_testutils/0.5.14-1.tar.gz";
    name = "0.5.14-1.tar.gz";
    sha256 = "c67d04bf22b08aee5f9d8932bd3372d4ee7630daea6b721995ddbbea6718cda4";
  };

  buildType = "catkin";
  buildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains testing utilities used by Pilz packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
