
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-coding, etsi-its-cam-ts-coding, etsi-its-cpm-ts-coding, etsi-its-denm-coding, etsi-its-denm-ts-coding, etsi-its-ivim-ts-coding, etsi-its-mapem-ts-coding, etsi-its-spatem-ts-coding, etsi-its-vam-ts-coding }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-coding";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_coding/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "9e12dd3a7e5297bcf619fadf00e0d6754c82d22befa8cbcc8f20aaa3b8912713";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-cam-coding etsi-its-cam-ts-coding etsi-its-cpm-ts-coding etsi-its-denm-coding etsi-its-denm-ts-coding etsi-its-ivim-ts-coding etsi-its-mapem-ts-coding etsi-its-spatem-ts-coding etsi-its-vam-ts-coding ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ compatible C source code for ETSI ITS messages generated from ASN.1 using asn1c";
    license = with lib.licenses; [ mit ];
  };
}
