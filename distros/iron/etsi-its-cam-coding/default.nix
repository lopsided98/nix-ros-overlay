
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-iron-etsi-its-cam-coding";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/iron/etsi_its_cam_coding/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "b3c47b76440bbcf7dac217253e68ff5775b89e364ac37ca138a4ce8e42573000";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ compatible C source code for ETSI ITS CAMs generated from ASN.1 using asn1c'';
    license = with lib.licenses; [ mit ];
  };
}
