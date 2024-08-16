
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-cpm-ts-coding, etsi-its-cpm-ts-msgs, etsi-its-primitives-conversion, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-cpm-ts-conversion";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_cpm_ts_conversion/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "6cb76a24f199ae18d7110028b1c40be4acbc301be4275ce9f6b6b1076afaaf20";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-cpm-ts-coding etsi-its-cpm-ts-msgs etsi-its-primitives-conversion ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS CPMs (TS)";
    license = with lib.licenses; [ mit ];
  };
}
