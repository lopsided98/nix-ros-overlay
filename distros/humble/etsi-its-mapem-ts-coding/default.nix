
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-etsi-its-mapem-ts-coding";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/humble/etsi_its_mapem_ts_coding/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "d827f1865b5592c55ede7e839fe94b9127a1818c70f0c379d5e13deb1b152a7f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ compatible C source code for ETSI ITS MAPEMs (TS) generated from ASN.1 using asn1c";
    license = with lib.licenses; [ mit ];
  };
}
