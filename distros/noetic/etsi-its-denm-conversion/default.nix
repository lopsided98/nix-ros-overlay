
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-denm-coding, etsi-its-denm-msgs, etsi-its-primitives-conversion, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-denm-conversion";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_denm_conversion/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "a36cfa74abcf0f65983a3dfc0676e51debc023d596a60547f11fd90b64a6f2aa";
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
