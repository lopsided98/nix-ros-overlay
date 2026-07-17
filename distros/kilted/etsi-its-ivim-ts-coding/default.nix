
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-kilted-etsi-its-ivim-ts-coding";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/kilted/etsi_its_ivim_ts_coding/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "ebbf6dd8fe33862cf57691279b4dde21e870801b52e043b2b9a8d82b50d55ee6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ compatible C source code for ETSI ITS IVIMs generated from ASN.1 using asn1c";
    license = with lib.licenses; [ mit ];
  };
}
