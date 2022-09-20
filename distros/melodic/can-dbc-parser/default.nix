
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-can-dbc-parser";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/nobleo/raptor-dbw-ros-release/archive/release/melodic/can_dbc_parser/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "e2c1cf7aab65cc2a69c0bced65d590a220263dcfdca4af126fdf21855c93e33a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ can-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''DBC file interface.  Read a DBC file, unpack CAN messages and convert to engineering units, pack values into CAN messages for publishing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
