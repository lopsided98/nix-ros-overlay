
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-primitives-conversion, etsi-its-vam-ts-coding, etsi-its-vam-ts-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-vam-ts-conversion";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_vam_ts_conversion/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "c1a9d60dd1c09712b101eb3c9be4f82e571d79a213b026b00f22d32762389b2e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-primitives-conversion etsi-its-vam-ts-coding etsi-its-vam-ts-msgs ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS VAMs (TS)";
    license = with lib.licenses; [ mit ];
  };
}
