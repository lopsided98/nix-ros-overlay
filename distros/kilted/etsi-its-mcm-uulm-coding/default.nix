
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-kilted-etsi-its-mcm-uulm-coding";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/kilted/etsi_its_mcm_uulm_coding/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "77a1983adea364c2067f16785867f008f06d64ec85d5d0bc1edf26722950955a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ compatible C source code for draft MCM (TS) version of UULM generated from ASN.1 using asn1c";
    license = with lib.licenses; [ mit ];
  };
}
