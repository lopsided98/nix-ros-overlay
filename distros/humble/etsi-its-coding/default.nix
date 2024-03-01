
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-coding, etsi-its-denm-coding, ros-environment }:
buildRosPackage {
  pname = "ros-humble-etsi-its-coding";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/humble/etsi_its_coding/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "c3e8110356da27066f7d2b47eaa8df06c87765fc40ea00fd77af41c6805a3f6e";
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
