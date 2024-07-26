
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-denm-coding, etsi-its-denm-msgs, etsi-its-primitives-conversion, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-denm-conversion";
  version = "2.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_denm_conversion/2.1.0-3.tar.gz";
    name = "2.1.0-3.tar.gz";
    sha256 = "ab4e5b4f44907b88238874ed7e8f345502ebaf0986ff7b47ad5c17d3d04335a7";
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
