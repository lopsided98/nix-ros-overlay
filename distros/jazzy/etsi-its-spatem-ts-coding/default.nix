
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-spatem-ts-coding";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_spatem_ts_coding/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "eb1ce84f3b79a9d43746e0d531481f09f6dca1c34ef50bb1e0569c8d3312a468";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ compatible C source code for ETSI ITS SPATEMs (TS) generated from ASN.1 using asn1c";
    license = with lib.licenses; [ mit ];
  };
}
