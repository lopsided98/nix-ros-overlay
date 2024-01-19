
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-cam-coding, etsi-its-denm-coding, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-coding";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_coding/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "926d4150f1e63c6f7cd241d3385f158729bdd3c211a6199006159e5a88045676";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-cam-coding etsi-its-denm-coding ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ compatible C source code for ETSI ITS messages generated from ASN.1 using asn1c'';
    license = with lib.licenses; [ mit ];
  };
}
