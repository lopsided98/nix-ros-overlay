
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-cam-coding, etsi-its-cam-ts-coding, etsi-its-cpm-ts-coding, etsi-its-denm-coding, etsi-its-vam-ts-coding, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-coding";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_coding/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "f8a8ec50bdfbe1a402e4c1d207aba742c288a9244f5462e1d8804b8c2d107d71";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-cam-coding etsi-its-cam-ts-coding etsi-its-cpm-ts-coding etsi-its-denm-coding etsi-its-vam-ts-coding ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "C++ compatible C source code for ETSI ITS messages generated from ASN.1 using asn1c";
    license = with lib.licenses; [ mit ];
  };
}
