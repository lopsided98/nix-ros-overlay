
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment }:
buildRosPackage {
  pname = "ros-humble-etsi-its-cam-coding";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/humble/etsi_its_cam_coding/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "265e2588131c3b725edf0bf7305f442dad35d045cb9134700e62ca0d52a057ee";
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
