
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment }:
buildRosPackage {
  pname = "ros-humble-etsi-its-cam-coding";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/humble/etsi_its_cam_coding/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "b458660a8e6044d0cbcfe940968e95670d0691d609693710d962469a0687473b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ compatible C source code for ETSI ITS CAMs generated from ASN.1 using asn1c'';
    license = with lib.licenses; [ mit ];
  };
}
