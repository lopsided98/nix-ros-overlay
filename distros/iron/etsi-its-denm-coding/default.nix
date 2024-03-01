
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment }:
buildRosPackage {
  pname = "ros-iron-etsi-its-denm-coding";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/iron/etsi_its_denm_coding/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "117d0089411b2e2fce49f3a2e3de9c567fcad0166909d2fbedc5d3ec44555679";
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
