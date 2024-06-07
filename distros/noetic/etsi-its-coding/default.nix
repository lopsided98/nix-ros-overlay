
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-cam-coding, etsi-its-denm-coding, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-coding";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_coding/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "3691337e48d7a05ed976955384acdd430dd147fec374cb79b24b5142bcd5cc98";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-cam-coding etsi-its-denm-coding ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "C++ compatible C source code for ETSI ITS messages generated from ASN.1 using asn1c";
    license = with lib.licenses; [ mit ];
  };
}
