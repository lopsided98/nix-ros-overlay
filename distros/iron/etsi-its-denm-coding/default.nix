
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment }:
buildRosPackage {
  pname = "ros-iron-etsi-its-denm-coding";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/iron/etsi_its_denm_coding/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "146221e501bddf1313be171b5626cb0fa51efd20db94024146363b74bcb1569c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ compatible C source code for ETSI ITS DENMs generated from ASN.1 using asn1c'';
    license = with lib.licenses; [ mit ];
  };
}
