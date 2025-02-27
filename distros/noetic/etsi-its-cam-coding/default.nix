
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-cam-coding";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_cam_coding/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "b10c4597814849f36196b0e43d1cfc999303dd585736a5f316ca6fdd9f0e561f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "C++ compatible C source code for ETSI ITS CAMs generated from ASN.1 using asn1c";
    license = with lib.licenses; [ mit ];
  };
}
