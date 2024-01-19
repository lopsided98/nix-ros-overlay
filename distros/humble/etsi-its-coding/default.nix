
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-coding, etsi-its-denm-coding, ros-environment }:
buildRosPackage {
  pname = "ros-humble-etsi-its-coding";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/humble/etsi_its_coding/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "7da5fbab5f5b95486dcb5965f1ee3fbf8884528f52f1097d28a2373b55909edb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-cam-coding etsi-its-denm-coding ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ compatible C source code for ETSI ITS messages generated from ASN.1 using asn1c'';
    license = with lib.licenses; [ mit ];
  };
}
