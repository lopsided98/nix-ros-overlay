
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-cam-coding, etsi-its-denm-coding, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-coding";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_coding/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "85054b8bdad4a21b10dc22cda181fdbd183a790c0ddcd1fc96f350af970329a7";
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
