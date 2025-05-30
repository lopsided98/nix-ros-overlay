
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment }:
buildRosPackage {
  pname = "ros-humble-etsi-its-denm-ts-coding";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/humble/etsi_its_denm_ts_coding/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "5f8df8b3f9e264847e32caad8eaeb84558276cc6f7582d0f9ed35dd1f8c310fd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ compatible C source code for ETSI ITS DENMs (TS) generated from ASN.1 using asn1c";
    license = with lib.licenses; [ mit ];
  };
}
