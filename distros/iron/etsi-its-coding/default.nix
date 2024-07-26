
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-coding, etsi-its-cpm-ts-coding, etsi-its-denm-coding, ros-environment }:
buildRosPackage {
  pname = "ros-iron-etsi-its-coding";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/iron/etsi_its_coding/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "f6046cfb20e0ac23d0b672a851331cebf80fb27144dbe886ddc3fb9ce96c0908";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-cam-coding etsi-its-cpm-ts-coding etsi-its-denm-coding ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ compatible C source code for ETSI ITS messages generated from ASN.1 using asn1c";
    license = with lib.licenses; [ mit ];
  };
}
