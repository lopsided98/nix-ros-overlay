
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-coding, etsi-its-denm-coding, ros-environment }:
buildRosPackage {
  pname = "ros-humble-etsi-its-coding";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/humble/etsi_its_coding/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "5c1ff6fb1308eb9190205c9fef42c0e7ef673ffd5785c7e33f44dfc7208815cd";
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
