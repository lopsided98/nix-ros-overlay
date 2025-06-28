
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-denm-ts-coding";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_denm_ts_coding/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "39be4ada1c056d6d9c7588c5167862541d292e9b274b7cbde1a1783cb76beef8";
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
