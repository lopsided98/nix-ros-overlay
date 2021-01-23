
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-can-dbc-parser";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/nobleo/raptor-dbw-ros-release/archive/release/melodic/can_dbc_parser/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "40c930b51a258e6d0f984368edb32064279aeab2d8547b3d6f214d831be9d405";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''DBC file interface.  Read a DBC file, unpack CAN messages and convert to engineering units, pack values into CAN messages for publishing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
