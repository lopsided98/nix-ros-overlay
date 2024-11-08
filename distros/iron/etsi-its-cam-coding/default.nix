
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment }:
buildRosPackage {
  pname = "ros-iron-etsi-its-cam-coding";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/iron/etsi_its_cam_coding/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "4ee3df789c549e29d7b5ad1cbd87e2783c9c4c94b93b5429861654675978ab0d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ compatible C source code for ETSI ITS CAMs generated from ASN.1 using asn1c";
    license = with lib.licenses; [ mit ];
  };
}
