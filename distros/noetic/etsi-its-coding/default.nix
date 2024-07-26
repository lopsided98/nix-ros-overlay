
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-cam-coding, etsi-its-cpm-ts-coding, etsi-its-denm-coding, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-coding";
  version = "2.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_coding/2.1.0-3.tar.gz";
    name = "2.1.0-3.tar.gz";
    sha256 = "ed0860960d2f5e541a43b452f902c7fba40f97b3a26e215200387fbb1fb8bbb6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-cam-coding etsi-its-cpm-ts-coding etsi-its-denm-coding ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "C++ compatible C source code for ETSI ITS messages generated from ASN.1 using asn1c";
    license = with lib.licenses; [ mit ];
  };
}
