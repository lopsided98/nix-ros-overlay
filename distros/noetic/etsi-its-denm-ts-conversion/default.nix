
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-denm-ts-coding, etsi-its-denm-ts-msgs, etsi-its-primitives-conversion, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-denm-ts-conversion";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_denm_ts_conversion/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "ee0c177843e48efa9408626a6d85ea8d9c78701237cfca0e4fec238e867914d6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-denm-ts-coding etsi-its-denm-ts-msgs etsi-its-primitives-conversion ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS DENMs (TS)";
    license = with lib.licenses; [ mit ];
  };
}
