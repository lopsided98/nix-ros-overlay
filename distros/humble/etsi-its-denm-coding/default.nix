
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-etsi-its-denm-coding";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/humble/etsi_its_denm_coding/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "fec8c48799dee794ca18e339dbc62e4e3c897513c58fbd99426965bdec747134";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ compatible C source code for ETSI ITS DENMs generated from ASN.1 using asn1c'';
    license = with lib.licenses; [ mit ];
  };
}
