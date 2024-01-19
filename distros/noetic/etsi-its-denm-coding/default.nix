
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-denm-coding";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_denm_coding/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "ebe3c0be63682f6728276dcc593d3e26d8c32d72a8cadcf6c25a8ed49fa306d9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ compatible C source code for ETSI ITS DENMs generated from ASN.1 using asn1c'';
    license = with lib.licenses; [ mit ];
  };
}
