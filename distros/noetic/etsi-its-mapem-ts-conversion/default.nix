
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-mapem-ts-coding, etsi-its-mapem-ts-msgs, etsi-its-primitives-conversion, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-mapem-ts-conversion";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_mapem_ts_conversion/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "057ff50d7aa649d4cf44874f3c1798be85791a8f8af96a1a77391445a4013f8c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-mapem-ts-coding etsi-its-mapem-ts-msgs etsi-its-primitives-conversion ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS MAPEMs (TS)";
    license = with lib.licenses; [ mit ];
  };
}
