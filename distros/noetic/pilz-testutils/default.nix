
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pilz-utils, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-pilz-testutils";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_common-release/archive/release/noetic/pilz_testutils/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "cb1888e47c114b236c8a1be5a109214e505d296aa20be77b485f538ee85818d1";
  };

  buildType = "catkin";
  buildInputs = [ pilz-utils roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains testing utilities used by Pilz packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
