
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-cam-coding";
  version = "2.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_cam_coding/2.1.0-3.tar.gz";
    name = "2.1.0-3.tar.gz";
    sha256 = "f282865cb68607b9f0ccf8fb6348f7bc62259af9437a078cf5da153b4ded1958";
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
