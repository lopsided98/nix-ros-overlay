
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-vam-ts-coding";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_vam_ts_coding/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "4712cf52f99a21908ece63deced825a94e6bfe28b0c2c4156e06f4444eb7454a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ compatible C source code for ETSI ITS VAMs (TS) generated from ASN.1 using asn1c";
    license = with lib.licenses; [ mit ];
  };
}
