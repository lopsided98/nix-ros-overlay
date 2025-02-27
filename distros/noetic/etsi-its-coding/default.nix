
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-cam-coding, etsi-its-cam-ts-coding, etsi-its-cpm-ts-coding, etsi-its-denm-coding, etsi-its-denm-ts-coding, etsi-its-mapem-ts-coding, etsi-its-spatem-ts-coding, etsi-its-vam-ts-coding, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-coding";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_coding/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "6a65a4c0e795e6214944495ecb6be22e930f80cf20c9a72bf70e560ff2f6ae88";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-cam-coding etsi-its-cam-ts-coding etsi-its-cpm-ts-coding etsi-its-denm-coding etsi-its-denm-ts-coding etsi-its-mapem-ts-coding etsi-its-spatem-ts-coding etsi-its-vam-ts-coding ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "C++ compatible C source code for ETSI ITS messages generated from ASN.1 using asn1c";
    license = with lib.licenses; [ mit ];
  };
}
