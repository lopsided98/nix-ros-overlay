
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-denm-coding, etsi-its-denm-msgs, etsi-its-primitives-conversion, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-denm-conversion";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_denm_conversion/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "2ffc0528b83d756aa5bcd522b669b0978d22ce5fd77300fc63e7fb030aaa86d2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-denm-coding etsi-its-denm-msgs etsi-its-primitives-conversion ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS DENMs";
    license = with lib.licenses; [ mit ];
  };
}
