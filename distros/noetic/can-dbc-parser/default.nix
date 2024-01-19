
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-noetic-can-dbc-parser";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/raptor-dbw-ros-release/archive/release/noetic/can_dbc_parser/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "aaa9ba0d987a7a2ac39f8c714346a4dc0cce310ca3748b78a013ddb34bc54eff";
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
